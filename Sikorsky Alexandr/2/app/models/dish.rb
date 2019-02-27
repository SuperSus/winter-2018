class Dish < ApplicationRecord
  has_many :ingestions
  has_many :users, through: :ingestions
end
