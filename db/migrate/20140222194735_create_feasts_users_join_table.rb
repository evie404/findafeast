class CreateFeastsUsersJoinTable < ActiveRecord::Migration
  def change
    create_table :feasts_users, id: false do |t|
      t.integer :feast_id
      t.integer :user_id
    end
  end
end
