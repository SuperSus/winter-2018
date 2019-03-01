class Dish < ApplicationRecord
  has_many :ingestions
  has_and_belongs_to_many :ingestions
  #has_many :users, through: :ingestions
end
