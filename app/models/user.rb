class User < ApplicationRecord
  has_many :appointments, dependent: :destroy
  has_many :doctors, through: :appointments

  def full_name
    "#{first_name} #{last_name}"
  end
end


# appointments :date
# doctors :name :specialty
# users :name

# enrollments :role (user_id, course_id)
# courses :name
# users :name
