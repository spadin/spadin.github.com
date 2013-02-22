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

desc "Update master branch"
task :update do
  dir = File.dirname(__FILE__)
  system "cd #{dir}"
  system "git checkout source _site/"
  system "mv _site/* ./"
  system "rm -r _site"
end

task :default => :spec
