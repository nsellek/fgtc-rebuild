class Page < ApplicationRecord

  scope :active, -> { where(active: true) }
end
