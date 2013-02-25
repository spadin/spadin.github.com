require 'blog/post'
require 'stringio'

module Blog
  describe Post do
    let (:post) { Post.new }

    def stub_time(date_string)
      stubbed_time = Time.parse(date_string)
      Time.stub!(:now).and_return(stubbed_time)
    end

    before do
      stub_time "12/02/2012"
    end

    it "converts a title string into a safe string" do
      post.title = "Someone's cool story"
      post.parameterize_title.should eq "someone-s-cool-story"
    end

    it "returns the post date in the filename format" do
      post.filename_date.should eq "2012-02-12"
    end

    it "returns the post date in a long format" do
      post.long_date.should eq "February 12, 2012"
    end

    it "returns the filename for a new post" do
      post.title = "My Cool Story"
      post.filename.should eq "_posts/2012-02-12-my-cool-story.md"
    end

    it "creates a new post" do
      post.title = "Snow day"

      expected = <<-END.gsub(/^ {8}/, '')
        ---
        layout: post
        title: "#{post.title}"
        snippet: ""
        date-string: #{post.long_date}
        ---

      END

      output_file = StringIO.new
      post.stub(:file).and_return(output_file)
      post.create!
      output_file.string.should eq expected
    end
  end
end
