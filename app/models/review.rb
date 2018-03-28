class Review < ApplicationRecord
  belongs_to :restaurant
    validates :content, presence: true, allow_nil: false
    validates :rating, presence: true, allow_nil: false, :inclusion => 0..5, numericality: {only_integer: true}

end
