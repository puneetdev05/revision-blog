# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user = User.where(email: "puneet@everchimps.com").first_or_initialize
user.update!(
    password: "puneet",
    password_confirmation: "puneet"
)

(1..100).each do |i|
    blog_post = BlogPost.where(title: "Blog Post #{i}").first_or_initialize
    blog_post.update(content: "This blog #{i} is to test pagination feature", published_at: Time.current)
end