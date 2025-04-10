# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

10.times do |i|
    User.create!(
        email: "user#{i}@mail.com", 
        firstname: "nombre#{i}",
        lastname: "apellido#{i}"
    )
end

10.times do |i|
    sender_id = User.pluck(:id).sample
    receiver_id = (User.pluck(:id) - [sender_id]).sample
    Chat.create!(
        sender_id: sender_id,
        receiver_id: receiver_id
    )
end

10.times do |i|
    chat = Chat.all.sample
    user = User.all.sample
    Message.create!(
        chat_id: chat.id,
        user_id: user.id,
        body: "Mensaje #{i} del usuario #{user.firstname}"
    )
end