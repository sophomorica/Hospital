3.times do |i|
    User.create(first_name: "#{ i +1 } first", last_name: "#{ i +1 } last")
end

3.times do |i|
  Doctor.create(name: "Doctor #{ i + 1 }")
end

Appointment.create(doctor_id: Doctor.first.id, user_id: User.first.id, date: "Sep 29")
Appointment.create(doctor_id: Doctor.first.id, user_id: User.last.id, date: "Sep 30")
