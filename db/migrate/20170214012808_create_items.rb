class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :category
      t.integer :price
      t.string :condition
      t.string :description
      t.string :stock
      t.string :photo
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
