class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :research_type
      t.string :place
      t.text :time
      t.string :url
      t.text :content
      t.integer :user_id

      t.timestamps
    end
  end
end
