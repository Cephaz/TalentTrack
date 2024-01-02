# frozen_string_literal: true

# db/seeds/development.rb

# Create users
users_data = [
  { email: 'user1@example.com', password: 'password1' },
  { email: 'user2@example.com', password: 'password2' }
]

users_data.each do |user_data|
  User.find_or_create_by(email: user_data[:email]) do |user|
    user.password = user_data[:password]
  end
end

puts 'Users seeded successfully.'

# Create job applications
job_applications_data = [
  { company_name: 'Company A', application_date: Time.zone.today - 10.days, application_status: 'Pending' },
  { company_name: 'Company B', application_date: Time.zone.today - 5.days, application_status: 'Approved' },
  { company_name: 'Company C', application_date: Time.zone.today - 20.days, application_status: 'Rejected' }
]

job_applications_data.each do |job_application_data|
  user = User.first
  job_application_data[:user_id] = user.id if user

  JobApplication.find_or_create_by(job_application_data)
end

puts 'Job applications seeded successfully.'
