Post.destroy_all

50.times do |index|
  Post.create!(user_id: 1,
  title: Faker::HarryPotter.character,
  url: Faker::Internet.url('youtube.com'))
end
