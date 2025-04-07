class AllowedToken < ApplicationRecord
  def self.remove_expired_token
    tokens = all
    delete_by("expires_at <= ?", Time.now)
  end
end
