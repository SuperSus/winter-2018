class User < ApplicationRecord
  # Include default devise modules. Others available are:
  has_many :ingestions
  has_many :dishes, through: :ingestions
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
