class User < ApplicationRecord
  has_many :appointments, depedent: :destroy
  has_many :doctors, through: :appointments

  def full_name
    "#{first_name} #{last_name}"
  end
end