class Post < ActiveRecord::Base
	validates :title, presence: true
	validates :content, length: {minimum: 100}
	validates_inclusion_of :category, in: ["Fiction", "fiction", "Non-Fiction", "Nonfiction", "nonfiction"]
end
