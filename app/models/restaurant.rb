class Restaurant < ApplicationRecord
  has_many  :reviews, dependent: :destroy
  validates :address, presence: true
end
