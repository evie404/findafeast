class Feast < ActiveRecord::Base
  belongs_to :restaurant
  has_and_belongs_to_many :users

  def default_name
    "Dinner at #{restaurant}!"
  end
end
