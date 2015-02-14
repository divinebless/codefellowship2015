class Article < ActiveRecord::Base
	def self.search(query)
		where("title like?","%#{query}%")
		
	end
belongs_to :user
has_many :comment
has_attached_file :avator ,:styles => {:medium => "300x300", :thumb => "100x100"}
validates_attachment_content_type :avator, :content_type=> /\Aimage\/.*\Z/

# cant upload without these 2 lines
end
