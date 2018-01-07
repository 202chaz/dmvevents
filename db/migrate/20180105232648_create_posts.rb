class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.text :image_data
      t.string :title
      t.text :description
      t.text :embed_files
      t.string :category
      t.integer :authord_id
      t.integer :visit_counter, default: rand(40..130)
      t.boolean :featured, default: false
      t.boolean :spotlighted, default: false

      t.timestamps
    end
  end
end
