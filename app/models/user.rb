class User < ApplicationRecord
  has_secure_password

  validates :email,
            # :name,
            presence: true,
            uniqueness: { case_sensitive: false },
            format: { with: URI::MailTo::EMAIL_REGEXP } # <-- validates that the email is in correct format, and that it is unique

  
  validates :name,
            presence: true

  has_many :binges, dependent: :destroy  
    
end
