class PasswordReset < ApplicationRecord
    belongs_to :user

    before_create :generate_token
  
    def generate_token
      self.token = SecureRandom.hex(10)
    end
  
    def expired?
      created_at < 2.hours.ago
    end
end
