# 3.times do |i|
#     User.create(first_name: "#{ i +1 } first", last_name: "#{ i +1 } last")
# end

# 3.times do |i|
#   Doctor.create(name: "Doctor #{ i + 1 }")
# end

# Appointment.create(doctor_id: Doctor.first.id, user_id: User.first.id, date: "Sep 29")
# Appointment.create(doctor_id: Doctor.first.id, user_id: User.last.id, date: "Sep 30")


10.times do
  doctor = Doctor.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    specialty: Faker::Superhero.power
  )
 
  10.times do 
    user = User.create(
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name
    )

    Appointment.create(
      date: Faker::Date.forward(30),
      doctor_id: doctor.id,
      user_id: user.id
    )
  end
end

puts "We created ten courses with ten users"