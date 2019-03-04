class Printable < ApplicationRecord

	# returns a hash of random data by "week" number
	#   { 1 => 135,
	#     2 => 5000,
  	#     etc. }

  	def self.sales
    	(1..10).each_with_object(Hash.new) do |i, h|
      		h[i] = (rand(10000) / (rand(100)+1)).to_i
    	end
	end
end
