class Medium < ApplicationRecord
  has_many :binges, dependent: :destroy
end
