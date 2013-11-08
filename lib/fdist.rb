require 'mathn'

module Frequency

	def freq expression
		Rational.instance_eval("#{count(expression)}/#{length}")
	end

	def fdist
		hash = {}
		uniq.each do |el| hash[el] = count(el) end
		hash
	end

end

class Array
	include Frequency
end