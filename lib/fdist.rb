
module Enumerable

	# such that #fdist allows the user to select a slice off results off the top/bottom/whatever of the frequency distribution hash without conversion to- and from-Array type.


	def fdist(valid_array_slice_arg=0..-1)
		self.group_by do |elem|
			block_given? ? yield(elem) : elem
		end.map do |result, instances_of_that_result|
			[result, instances_of_that_result.count]
		end.sort_by do |result, frequency|
			frequency
		end[valid_array_slice_arg].to_h
	end
end


