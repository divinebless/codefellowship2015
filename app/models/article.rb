class Article < ActiveRecord::Base
	def self.search(query)
		where("title like?","%#{query}%")
		
	end
belongs_to :user
has_many :comment
end
