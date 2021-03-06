class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.integer :genre_id
      t.string :name
      t.integer :price
      t.boolean :is_active
      t.text :description

      t.timestamps
    end
  end
end
