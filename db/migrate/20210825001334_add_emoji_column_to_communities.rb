class AddEmojiColumnToCommunities < ActiveRecord::Migration[6.1]
  def change
    add_column :communities, :emoji, :string
  end
end
