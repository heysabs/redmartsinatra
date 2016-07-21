require './models/user'

(0..10).each do |i|
    User.create(name: "User #{i}", email: "something", address: "address", password: "password")
end
