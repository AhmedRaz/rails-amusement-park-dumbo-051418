class User < ActiveRecord::Base
  has_secure_password
  has_many :rides
  has_many :attractions, through: :rides
  validates :name, presence: true
  validates :password_digest, presence: true
  validates :nausea, presence: true
  validates :happiness, presence: true
  validates :tickets, presence: true
  validates :height, presence: true

  def mood
    if self.nausea > self.happiness
      return "sad"
    else
      return "happy"
    end
  end
end
