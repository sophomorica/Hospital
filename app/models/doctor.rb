class Doctor < ApplicationRecord
  has_many :appointments, dependent: :destroy
  has_many :users, through: :appointments

  def full_name
    "#{first_name} #{last_name}"
  end
  
end
