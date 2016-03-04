function setupDescriptorPool(device)
	# We need to tell the API the number of max. requested descriptors per type
	typeCounts = Array(VkDescriptorPoolSize, 1)
	# This example only uses one descriptor type (uniform buffer) and only
	# requests one descriptor of this type
	typeCounts[1, :type] = VK_DESCRIPTOR_TYPE_UNIFORM_BUFFER
	typeCounts[1, :descriptorCount] = 1
	# For additional types you need to add new entries in the type count list
	# E.g. for two combined image samplers :
	# typeCounts[1].type = VK_DESCRIPTOR_TYPE_COMBINED_IMAGE_SAMPLER
	# typeCounts[1].descriptorCount = 2

	# Create the global descriptor pool
	# All descriptors used in this example are allocated from this pool
	descriptorPoolInfo = Ref{api.VkDescriptorPoolCreateInfo}()
	descriptorPoolInfo[:sType] = api.VK_STRUCTURE_TYPE_DESCRIPTOR_POOL_CREATE_INFO
	descriptorPoolInfo[:pNext] = C_NULL
	descriptorPoolInfo[:poolSizeCount] = 1
	descriptorPoolInfo[:pPoolSizes] = typeCounts
	# Set the max. number of sets that can be requested
	# Requesting descriptors beyond maxSets will result in an error
	descriptorPoolInfo[:maxSets] = 1

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
	descriptorSetLayout = Ref{api.VkDescriptorSetLayout}(C_NULL)
	# Binding 0 : Uniform buffer (Vertex shader)
	layoutBinding = Ref{api.VkDescriptorSetLayoutBinding}()
	layoutBinding[:descriptorType] = api.VK_DESCRIPTOR_TYPE_UNIFORM_BUFFER
	layoutBinding[:descriptorCount] = 1
	layoutBinding[:stageFlags] = api.VK_SHADER_STAGE_VERTEX_BIT
	layoutBinding[:pImmutableSamplers] = C_NULL

	descriptorLayout = Ref{api.VkDescriptorSetLayoutCreateInfo}()
	descriptorLayout[:sType] = api.VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_CREATE_INFO
	descriptorLayout[:pNext] = C_NULL
	descriptorLayout[:bindingCount] = 1
	descriptorLayout[:pBindings] = layoutBinding

	err = api.vkCreateDescriptorSetLayout(device, descriptorLayout, C_NULL, descriptorSetLayout)
	check(err)

	# Create the pipeline layout that is used to generate the rendering pipelines that
	# are based on this descriptor set layout
	# In a more complex scenario you would have different pipeline layouts for different
	# descriptor set layouts that could be reused
	pPipelineLayoutCreateInfo = Ref{api.VkPipelineLayoutCreateInfo}()
	pPipelineLayoutCreateInfo[:sType] = api.VK_STRUCTURE_TYPE_PIPELINE_LAYOUT_CREATE_INFO
	pPipelineLayoutCreateInfo[:pNext] = C_NULL
	pPipelineLayoutCreateInfo[:setLayoutCount] = 1
	pPipelineLayoutCreateInfo[:pSetLayouts] = descriptorSetLayout[]
	pipelineLayout = Ref{api.VkPipelineLayout}(C_NULL)
	err = api.vkCreatePipelineLayout(device, pPipelineLayoutCreateInfo, C_NULL, pipelineLayout)
	check(err)
	descriptorSetLayout[], pipelineLayout[]
end

function setupDescriptorSet(device, descriptorPool, descriptorSetLayout)
	# Update descriptor sets determining the shader binding points
	# For every binding point used in a shader there needs to be one
	# descriptor set matching that binding point
	writeDescriptorSet = Ref{api.VkWriteDescriptorSet}()

	allocInfo = Ref{api.VkDescriptorSetAllocateInfo}()
	allocInfo[:sType] = api.VK_STRUCTURE_TYPE_DESCRIPTOR_SET_ALLOCATE_INFO
	allocInfo[:descriptorPool] = descriptorPool
	allocInfo[:descriptorSetCount] = 1
	allocInfo[:pSetLayouts] = descriptorSetLayout
	descriptorSet = Ref{VkDescriptorSet}(C_NULL)
	err = api.vkAllocateDescriptorSets(device, allocInfo, descriptorSet)
	check(err)

	# Binding 0 : Uniform buffer
	writeDescriptorSet[:sType] = api.VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET
	writeDescriptorSet[:dstSet] = descriptorSet[]
	writeDescriptorSet[:descriptorCount] = 1
	writeDescriptorSet[:descriptorType] = api.VK_DESCRIPTOR_TYPE_UNIFORM_BUFFER
	writeDescriptorSet[:pBufferInfo] = uniformDataVS.descriptor
	# Binds this uniform buffer to binding point 0
	writeDescriptorSet[:dstBinding] = 0

	api.vkUpdateDescriptorSets(device, 1, writeDescriptorSet, 0, C_NULL)
	nothing
end