# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Student.create!([
  { first_name: "John", last_name: "Doe", email: "john@example.com", phone_number: "123-456-7890", short_bio: "Short Bio", linkedin_url: "http://linkedin.com", twitter_handle: "http://twitter.com", personal_website_url: "http://personalblog.com", online_resume_url: "http://resume.com", github_url: "http://github.com", photo: "https://cdn-icons-png.flaticon.com/512/5850/5850276.png", password: "password", password_confirmation: "password" },
  { first_name: "Leah", last_name: "Doe", email: "leah@example.com", phone_number: "123-456-7890", short_bio: "Short Bio", linkedin_url: "http://linkedin.com", twitter_handle: "http://twitter.com", personal_website_url: "http://personalblog.com", online_resume_url: "http://resume.com", github_url: "http://github.com", photo: "https://cdn-icons-png.flaticon.com/512/2491/2491056.png", password: "password", password_confirmation: "password" },
  { first_name: "Anna", last_name: "Doe", email: "anna@example.com", phone_number: "123-456-7890", short_bio: "Short Bio", linkedin_url: "http://linkedin.com", twitter_handle: "http://twitter.com", personal_website_url: "http://personalblog.com", online_resume_url: "http://resume.com", github_url: "http://github.com", photo: "https://cdn.icon-icons.com/icons2/1465/PNG/512/132womanstudent2_100407.png", password: "password", password_confirmation: "password" },
])

Capstone.create!([
  { name: "Capstone 1", description: "Systems of object recognition.", url: "http://capstone1.com", screenshot: "https://upload.wikimedia.org/wikipedia/commons/2/27/QEMU_6.2_screenshot_%28cropped%29.png", student_id: 1 },
  { name: "Capstone 2", description: "Effective plans for IT emergency recovery.", url: "http://capstone2.com", screenshot: "https://kinsta.com/wp-content/uploads/2021/04/cleanshot-obfuscate-tool.png", student_id: 2 },
  { name: "Capstone 3", description: "Top practices for managing records and documents.", url: "http://capstone3.com", screenshot: "https://kinsta.com/wp-content/uploads/2021/04/notes-image.png", student_id: 3 },
  { name: "Capstone 4", description: "Networking security issues.", url: "http://capstone4.com", screenshot: "https://upload.wikimedia.org/wikipedia/commons/1/1d/Slax.png", student_id: 3 },
  { name: "Capstone 5", description: "All system for business decision-making purpose.", url: "http://capstone5.com", screenshot: "https://blog.desdelinux.net/wp-content/uploads/2012/11/slax.jpg", student_id: 2 },
  { name: "Capstone 6", description: "Intelligent systems of voice recognition.", url: "http://capstone6.com", screenshot: "https://www.flupe.com/code/code-screenshot.png", student_id: 1 },
])

Education.create!([
  { start_date: "2022-01-01", end_date: "2022-07-01", degree: "Bachelor of Science", university_name: "University of Washington", details: "Details about school", student_id: 1 },
  { start_date: "2023-01-01", end_date: "2023-07-01", degree: "Bachelor of Science", university_name: "University of Illinois", details: "Details about school", student_id: 2 },
  { start_date: "2022-09-01", end_date: "2022-12-31", degree: "Bachelor of Science", university_name: "University of Pennsylvania", details: "Details about school", student_id: 3 },
])

Experience.create!([
  { start_date: "2022-01-01", end_date: "2022-07-01", job_title: "Software Engineer", company_name: "Google", details: "Details about school", student_id: 1 },
  { start_date: "2023-01-01", end_date: "2023-07-01", job_title: "Software Engineer", company_name: "Microsoft", details: "Details about school", student_id: 2 },
  { start_date: "2022-09-01", end_date: "2022-12-31", job_title: "Software Engineer", company_name: "Apple", details: "Details about school", student_id: 3 },
  { start_date: "2022-01-01", end_date: "2022-07-01", job_title: "Software Engineer", company_name: "Amazon", details: "Details about school", student_id: 1 },
  { start_date: "2023-01-01", end_date: "2023-07-01", job_title: "Software Engineer", company_name: "Facebook", details: "Details about school", student_id: 2 },
  { start_date: "2022-09-01", end_date: "2022-12-31", job_title: "Software Engineer", company_name: "Netflix", details: "Details about school", student_id: 3 },
  { start_date: "2022-01-01", end_date: "2022-07-01", job_title: "Software Engineer", company_name: "Uber", details: "Details about school", student_id: 1 },
  { start_date: "2023-01-01", end_date: "2023-07-01", job_title: "Software Engineer", company_name: "Airbnb", details: "Details about school", student_id: 2 },
  { start_date: "2022-09-01", end_date: "2022-12-31", job_title: "Software Engineer", company_name: "Tesla", details: "Details about school", student_id: 3 },
])

Skill.create!([
  { skill_name: "Ruby", student_id: 1 },
  { skill_name: "Python", student_id: 2 },
  { skill_name: "Java", student_id: 3 },
  { skill_name: "JavaScript", student_id: 1 },
  { skill_name: "HTML", student_id: 2 },
  { skill_name: "CSS", student_id: 3 },
  { skill_name: "C++", student_id: 1 },
  { skill_name: "C#", student_id: 2 },
  { skill_name: "PHP", student_id: 3 },
  { skill_name: "SQL", student_id: 1 },

])
