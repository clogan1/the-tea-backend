class Post < ActiveRecord::Base
    belongs_to :user
    has_many :likes, dependent: :destroy
    has_many :replies, dependent: :destroy
    belongs_to :community

    def like_count
        self.likes.count
    end

    def self.by_community(id)
        self.where("community_id = ?", id)
    end
end