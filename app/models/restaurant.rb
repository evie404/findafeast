class Restaurant < ActiveRecord::Base
  has_many :feasts

  def to_s
    name
  end
end
