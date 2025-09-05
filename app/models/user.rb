class User < ApplicationRecord
  validates :email,
            # :name,
            presence: true,
            uniqueness: { case_sensitive: false },
            format: { with: URI::MailTo::EMAIL_REGEXP } # <-- validates that the email is in correct format, and that it is unique  

  passwordless_with :email # <-- tells Passwordless which field stores the email address

  validates :name,
            presence: true 

  has_many :binges, dependent: :destroy
end
