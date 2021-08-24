class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :community, foreign_key: true
      t.string :headline
      t.string :content
      t.string :image_url
      t.timestamps
    end
  end
end
