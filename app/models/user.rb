class User < ActiveRecord::Base
    has_many :posts
    has_many :likes
    has_many :replies
    has_many :communities, through: :posts
end