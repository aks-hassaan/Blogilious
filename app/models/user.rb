class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_one_attached :avatar
  has_many :blogs
  has_many :favorites
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
