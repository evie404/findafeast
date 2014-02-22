class CreateFeasts < ActiveRecord::Migration
  def change
    create_table :feasts do |t|
      t.string :name
      t.text :description
      t.references :restaurant, index: true

      t.timestamps
    end
  end
end
