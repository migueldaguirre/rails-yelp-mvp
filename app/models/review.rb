class Review < ApplicationRecord
  belongs_to :restaurant
    validates :content, presence: true, allow_nil: false
    validates :rating, presence: true, allow_nil: false, inclusion: { in: (1..5) }

end
