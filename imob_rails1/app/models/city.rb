class City < ActiveRecord::Base
	validates :name, {presence: true}
	validates :state, length: {is: 2}
	##minimum, maximum
end
