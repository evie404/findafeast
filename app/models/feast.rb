class Feast < ActiveRecord::Base
  belongs_to :restaurant
  has_and_belongs_to_many :users
  # attr_accessible :user_tokens
  attr_reader :user_tokens

  def default_name
    "Dinner at #{restaurant}!"
  end

  def user_tokens=(tokens)
    self.user_ids = User.ids_from_tokens(tokens)
  end
end
