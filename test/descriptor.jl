function setupDescriptorPool(device)
	# We need to tell the API the number of max. requested descriptors per type
	# This example only uses one descriptor type (uniform buffer) and only
	# requests one descriptor of this type
	typeCounts = [create(api.VkDescriptorPoolSize,
        _type = api.VK_DESCRIPTOR_TYPE_UNIFORM_BUFFER,
        descriptorCount = 1
    )]
	# For additional types you need to add new entries in the type count list
	# E.g. for two combined image samplers :
	# typeCounts[1].type = VK_DESCRIPTOR_TYPE_COMBINED_IMAGE_SAMPLER
	# typeCounts[1].descriptorCount = 2

	# Create the global descriptor pool
	# All descriptors used in this example are allocated from this pool
    descriptorPoolInfo = create_ref(api.VkDescriptorPoolCreateInfo,
        sType = api.VK_STRUCTURE_TYPE_DESCRIPTOR_POOL_CREATE_INFO,
    	poolSizeCount = 1,
    	pPoolSizes = typeCounts,
    	# Set the max. number of sets that can be requested
    	# Requesting descriptors beyond maxSets will result in an error
    	maxSets = 1,
    )

	descriptorPool = Ref{api.VkDescriptorPool}(C_NULL)
	err = api.vkCreateDescriptorPool(device, descriptorPoolInfo, C_NULL, descriptorPool)
	check(err)
	descriptorPool[]
end


function setupDescriptorSetLayout(device)
	# Setup layout of descriptors used in this example
	# Basically connects the different shader stages to descriptors
	# for binding uniform buffers, image samplers, etc.
	# So every shader binding should map to one descriptor set layout
	# binding
	# Binding 0 : Uniform buffer (Vertex shader)

	layoutBinding = [create(api.VkDescriptorSetLayoutBinding,
    	descriptorType = api.VK_DESCRIPTOR_TYPE_UNIFORM_BUFFER,
    	descriptorCount = 1,
    	stageFlags = api.VK_SHADER_STAGE_VERTEX_BIT,
        pImmutableSamplers = C_NULL,
    	binding = 0,
    )]

	descriptorSetLayout = [CreateDescriptorSetLayout(device, C_NULL;
        sType = api.VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_CREATE_INFO,
        bindingCount = 1,
        pBindings = layoutBinding
    )]
	# Create the pipeline layout that is used to generate the rendering pipelines that
	# are based on this descriptor set layout
	# In a more complex scenario you would have different pipeline layouts for different
	# descriptor set layouts that could be reused
	pipelineLayout = CreatePipelineLayout(device, C_NULL;
        sType = api.VK_STRUCTURE_TYPE_PIPELINE_LAYOUT_CREATE_INFO,
        setLayoutCount = 1,
        pSetLayouts = descriptorSetLayout
    )
	descriptorSetLayout[], pipelineLayout
end

function setupDescriptorSet(device, descriptorPool, descriptorSetLayout, ubo)
	# Update descriptor sets determining the shader binding points
	# For every binding point used in a shader there needs to be one
	# descriptor set matching that binding point

    setlayout_ref = [descriptorSetLayout]
	allocInfo = create_ref(api.VkDescriptorSetAllocateInfo,
    	sType = api.VK_STRUCTURE_TYPE_DESCRIPTOR_SET_ALLOCATE_INFO,
        pNext = C_NULL,
    	descriptorPool = descriptorPool,
    	descriptorSetCount = 1,
    	pSetLayouts = setlayout_ref,
    )
	descriptorSet_ref = Ref{api.VkDescriptorSet}(C_NULL)
	err = api.vkAllocateDescriptorSets(device, allocInfo, descriptorSet_ref)
	check(err)
    descriptorSet = descriptorSet_ref[]

    writeDescriptorSet = create_ref(api.VkWriteDescriptorSet,
    	# Binding 0 : Uniform buffer
    	sType = api.VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET,
    	dstSet = descriptorSet,
    	descriptorCount = 1,
    	descriptorType = api.VK_DESCRIPTOR_TYPE_UNIFORM_BUFFER,
    	pBufferInfo = [get_descriptor(ubo)],
    	# Binds this uniform buffer to binding point 0
    	dstBinding = 0,
    )

	api.vkUpdateDescriptorSets(device, 1, writeDescriptorSet, 0, C_NULL)

	descriptorSet
end
