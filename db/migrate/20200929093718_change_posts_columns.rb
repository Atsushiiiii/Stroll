class ChangePostsColumns < ActiveRecord::Migration[5.2]
  def change
    remove_column :posts, :type, :string
    add_column :posts, :research_type, :string
  end
end
