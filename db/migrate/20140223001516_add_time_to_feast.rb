class AddTimeToFeast < ActiveRecord::Migration
  def change
    add_column :feasts, :time, :string
  end
end
