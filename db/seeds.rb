include RandomData


50.times do
  Post.create!(
    title: RandomData.random_sentence,
    body: RandomData.random_paragraph
  )
end
posts = Post.all

100.times do
  Comment.create!(
    post: posts.sample,
    body: RandomData.random_paragraph
  )
end

puts "Seed Finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
puts "But wait! There's more!"

yam = Post.find_or_create_by(title: "Hambone", body: "Oh gee thanks, I love being called hambone")
puts "#{yam.title} needs added!"
