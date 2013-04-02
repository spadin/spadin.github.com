require 'time'

module Blog
  class Post
    attr_accessor :title

    def initialize
      #puts "Create a post with the title: " + parameterize(title)
      #puts Date.new
    end

    def create!
      output = <<-END.gsub(/^ {8}/, '')
        ---
        layout: post
        title: "#{title}"
        snippet: ""
        date-string: #{long_date}
        ---

      END
      file.write output
      file.close
    end

    def file
      File.open filename, "w"
    end

    def filename
      "_posts/" + filename_date + "-" + parameterize_title + ".md"
    end

    def parameterize_title(sep = '-')
      parameterized_string = title.dup
      parameterized_string.gsub!(/[^a-z0-9\-_]+/i, sep)
      unless sep.nil? || sep.empty?
        re_sep = Regexp.escape(sep)
        parameterized_string.gsub!(/#{re_sep}{2,}/, sep)
        parameterized_string.gsub!(/^#{re_sep}|#{re_sep}$/i, '')
      end
      parameterized_string.downcase
    end

    def filename_date
      post_date.strftime("%Y-%m-%d")
    end

    def long_date
      post_date.strftime("%B %e, %Y")
    end

    def post_date
      @post_date ||= Time.now
    end
  end
end
