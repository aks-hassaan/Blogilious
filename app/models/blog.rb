class Blog < ApplicationRecord
  belongs_to :user
  has_one_attached :picture
  has_many  :comments, as: :commentable
  has_many :favorites
  
  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }

  VALID_STATUSES = ['Public', 'Private']
  
  validates :status, inclusion: { in: VALID_STATUSES }

end
