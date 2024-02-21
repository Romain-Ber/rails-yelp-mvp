class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  CATEGORY = ['chinese', 'italian', 'japanese', 'french', 'belgian']
  validates :category, inclusion: { in: CATEGORY }
  validates :name, :address, presence: true
end
