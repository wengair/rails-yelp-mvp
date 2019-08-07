class Restaurant < ApplicationRecord
  CATE = ['chinese', 'italian', 'japanese', 'french', 'belgian']
  validates :name, :address, presence: true
  validates :category, inclusion: { in: CATE }
  has_many :reviews, dependent: :destroy
end
