class Binge < ApplicationRecord
  STATUS = [ "geschaut", "nicht geschaut" ]
  enum :status, STATUS
  belongs_to :user
  belongs_to :medium

  def users
    medium.binges.map(&:user)
  end

  def friends(user)
    friends_array = users
    friends_array.delete(user)
    friends_array
  end
end
