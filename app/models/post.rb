class Post < ActiveRecord::Base
    validates :title, presence: true
    validates :content, length: {minimum: 100}
    validates :category, inclusion: %w{in: Fiction Non-Fiction}
    
end
