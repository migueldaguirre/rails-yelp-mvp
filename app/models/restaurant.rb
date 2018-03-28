class Restaurant < ApplicationRecord
  has_many :reviews, :dependent => :destroy

  CATEGORIES = ['chinese','italian','japanese','french','belgian']

  validates :name, presence: true, allow_nil: false
  validates :address, presence: true, allow_nil: false
  validates :category, presence: true, allow_nil: false
  validates :category, inclusion: { in: CATEGORIES }


end
