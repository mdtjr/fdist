
module Enumerable
	def set_headers param_list
		map! do |arr|
			param_list.zip(arr).inject({}) do |result,zipped|
				result[zipped.first] = zipped.last
				result
			end
		end
	end

	def fdist
		if block_given?
			result = group_by{|elem| yield elem}
			result.each_key{|key| result[key] = result[key].count}
			result
		else
			uniq.inject({}){|result,elem| result[elem] = count elem;result}
		end
	end
end