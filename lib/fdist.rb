
module Enumerable
	def set_headers param_list
		map! do |arr|
			param_list.zip(arr).inject({}) do |result,zipped|
				result[zipped.first] = zipped.last
				result
			end
		end
	end

	def fdist &block
		temp = self.map &block
		temp.inject({}) do |result,element|
			result[element] = temp.count element
			result
		end
	end	
end