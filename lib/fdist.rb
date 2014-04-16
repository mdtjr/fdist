
module Enumerable
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