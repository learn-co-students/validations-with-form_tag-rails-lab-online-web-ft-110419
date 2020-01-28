class Post < ActiveRecord::Base
    validates :title, presence: true
    validates :content, length: {minimum: 30}
    validates :category, inclusion: {in: %w(Non-Fiction Fiction)}
end
