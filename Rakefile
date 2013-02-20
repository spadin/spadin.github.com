$:.unshift(File.join(File.dirname(__FILE__), "lib"))
require 'blog/post'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec)

desc "Create a new post"
task :post do
  post = Blog::Post.new
  post.title = ENV['title'] || "new-post"
  post.create!
end

desc "Launch preview environment"
task :preview do
    system "jekyll --auto --server --pygments"
end

task :default => :spec
