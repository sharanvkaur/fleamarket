class AddColumnsToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :description, :string
    add_column :events, :one_liner, :string
    add_column :events, :other_sellers, :boolean
  end
end
