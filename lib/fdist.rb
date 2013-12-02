require 'mathn'

module Headers

	def headers
		begin
			[0].keys
		rescue
			nil
		end
	end

	def headers= param_list
		if first.class != Hash
			if first.class != String
				map! do |val_set|
					

					hash = {}
					val_set.each_with_index do |elem, idx|
						hash[param_list[idx += 1]] = elem
					end
					hash
				end
			else
				map! do |val_set|
					

					hash = {}
					arrayify(val_set).each_with_index do |elem, idx|
						hash[param_list[idx += 1]] = elem
					end
					hash
				end
			end
		end
		map! do |val_hash|
			redo_headers(val_hash, param_list)
		end
		param_list
	end

private

	def redo_headers old_hash, new_headers
		new_hash = {}
		new_headers.each_with_index do |new_header,idx|
			new_hash[new_header] = old_hash.values[idx]
		end
		new_hash
	end

	def arrayify thing
		begin
			thing.values
		rescue
			thing.strip.split ","
		end
	end
end


module Frequency

	def freq &expression
		Rational.instance_eval("#{count(&expression)}/#{length}")
	end

	def fdist
		self.uniq.sort_by{|el| self.count(el)}.reverse.inject({}){|memo, el| memo[el] = self.count(el)}
	end

end

class Array
	include Frequency
	include Headers
end