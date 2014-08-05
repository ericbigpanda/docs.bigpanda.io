require 'rubygems'
require 'nokogiri'

module Jekyll
  module PostHeaderFilter
    def get_header_hash_from_name(name)
        {"title"=>name,"href"=>name.downcase().gsub(/[^a-zA-Z]/, "-")}
    end
    def get_posts_with_headers(posts)
      altered = []
      for post in posts
        puts("generating headers for #{post.url}")
        if post.content.include?("###") #isMarkdown
            headers = post.content.split("\n").select{|i| i[/^\#\#\#\s/]}.map{ |n| n.sub("### ", "")}.map{ |m| get_header_hash_from_name(m)}
        else
            headers = Nokogiri::HTML(post.content).xpath("//h3").map(&:content).map{ |m| get_header_hash_from_name(m)};

        end
        altered.push({"title"=> post.title, "url"=>post.url, "headers"=> headers})
      end
      altered
    end
  end
end
Liquid::Template.register_filter(Jekyll::PostHeaderFilter)
