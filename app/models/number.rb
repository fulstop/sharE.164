class Number < ActiveRecord::Base

  validates :phone_number, presence: true, uniqueness: true
  validates :email, presence: true
  validates :expires_at, presence: true
  validates :slug, presence: true, uniqueness: true

  before_validation :assign_expires_at, :generate_slug


protected

  def assign_expires_at
    self.expires_at ||= Time.now + 30.days
  end

  def generate_slug
    self.slug = SecureRandom.hex(6)
  end

end
