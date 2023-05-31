100.times do |i|
  Library.create(name: Faker::Company.name, address: Faker::Address.full_address, year_of_creation: Faker::Date.between(from:'1900-09-23', to:'2023-05-31'), card_readers_id: rand(1..100))
end


100.times do |i|
  Book.create(name: Faker::Book.title, description: Faker::Lorem.sentence(word_count: 5), publication_year: Faker::Date.between(from:'2000-09-23', to:'2022-09-25'), library_id: rand(1..100), genres_id: rand(1..100), authors_id: rand(1..100))
end


100.times do |i|
  Author.create(name: Faker::Name.first_name, surname: Faker::Name.middle_name, lastname: Faker::Name.last_name, date_of_birth: Faker::Date.between(from:'1900-09-23', to:'2000-09-25'), books_id: rand(1..100))
end

# 100.times do |i|
#   name = Faker::Book.genre
#   book_id = rand(1..100)
#   ActiveRecord::Base.connection.execute("INSERT INTO genres (name, created_at, updated_at, book_id) VALUES ('#{name}', date('now'), date('now'), '#{book_id}')")
# end


# 100.times do |i|
#   name_book = rand(1..100)
#   date_taking_book = Faker::Date.between(from: '2010-09-23', to: '2021-04-12')
#   user_id = rand(1..100)
#   ActiveRecord::Base.connection.execute("INSERT INTO card_readers (name_book, date_taking_book, created_at, updated_at, user_id) VALUES ('#{name_book}', '#{date_taking_book}', date('now'), date('now'), '#{user_id}')")
# end


person = FakePerson.new
# 1.times do |i|
#   # name = person.first_name
#   # surname = person.middle_name
#   # date_of_birth = Faker::Date.between(from: '2010-09-23', to: '2011-09-25')
#   card_reader_id = rand(1..100)
#   email = "testemail@gmail.com"
#   ActiveRecord::Base.connection.execute("INSERT INTO users (name, surname, email, date_of_birth, created_at, updated_at) VALUES ('#{name}', '#{surname}', '#{email}', '#{date_of_birth}', date('now'), date('now'))")
# end
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?