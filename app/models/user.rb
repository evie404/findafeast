class User < ActiveRecord::Base
  has_and_belongs_to_many :feasts

  def self.tokens(query)
    users = where("name like ?", "%#{query}%")
    if users.empty?
      [{id: "<<<#{query}>>>", name: "New: \"#{query}\""}]
    else
      users
    end
  end

  def self.ids_from_tokens(tokens)
    tokens.gsub!(/<<<(.+?)>>>/) { create!(name: $1).id }
    tokens.split(',')
  end

  def to_s
    name
  end
end
