$:.unshift(File.join(File.dirname(__FILE__), "lib"))
require 'blog/post'

desc "Create a new post"
task :post do
  post = Blog::Post.new
  post.title = ENV['title'] || "new-post"
  post.create!
end
