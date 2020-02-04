class Post < ActiveRecord::Base
    belongs_to :author
    validates :title, presence: true
    validates :content, length: {minimum: 100}
    validates :category, inclusion: {in: ["Fiction", "Non-Fiction"]}
#title is not blank
#content is at least 100 characters long
#category is either "Fiction" or "Non-Fiction"
end
