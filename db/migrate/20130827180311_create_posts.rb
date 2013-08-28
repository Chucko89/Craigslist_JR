class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      # t.integer :category_id
      t.belongs_to :category
      t.string :title
      t.string :body
      t.string :email
    end
  end
end
