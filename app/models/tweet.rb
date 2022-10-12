class Tweet < ApplicationRecord
  has_one_attached :image
  
  belongs_to :user

  validates :user, presence: true
  validates :message, presence: true, length: { maximum: 140 }
end
