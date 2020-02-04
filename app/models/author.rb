class Author < ActiveRecord::Base
    has_many :posts
    validates :name, presence: true
    validates :email, uniqueness: true
    validates :phone_number, length: {is: 10}

    #name is not blank
    #email is unique
    #phone_number is exactly 10 digits long
end
