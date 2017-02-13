class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :name
      t.string :location
      t.date :date
      t.integer :target

      t.timestamps
    end
  end
end
