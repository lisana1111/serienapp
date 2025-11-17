class Binge < ApplicationRecord
  STATUS = ['geschaut','nicht geschaut']
  enum :status, STATUS
  belongs_to :user
  belongs_to :medium

  
end
 