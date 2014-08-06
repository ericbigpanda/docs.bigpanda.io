require 'rubygems'
require 'nokogiri'

module Jekyll
  module BPHelpersFilters
    def replace_section_separator(content)
      separator = "<!-- section-separator -->"
      index = 0
      return content if not content.include?(separator)
      while content.include?(separator)
        index = index + 1
        content = content.sub(separator, "<div class=\"integration-separator\"><div class=\"integration-number\">#{index}</div></div>")
      end
      content
    end

    def replace_include_in_integration_guide(content)
      content
    end

    def replace_media_links(content)
      site = @context.registers[:site]
      site.config["production"] ? content : content.gsub(/src="\/media/, "src=\"#{site.config["baseurl"]}/media")
    end

    def get_sorted_collections(a)
      cols = []
      site = @context.registers[:site]
      site.config["collections"].keys.each{ |key| cols << CollectionEntry.create_from_collection(site.collections[key], site)}
      cols 
    end
  end

  class DocEntry
    attr_reader   :slug, :content, :headers, :data

    def initialize(doc)
      @slug, @content, @data =  SlugEntry.new(doc.data["title"]), doc.content, doc.data
      if doc.content.include?("###") #isMarkdown
        @headers = doc.content.split("\n").select{|i| i[/^\#\#\#\s/]}.map{ |n| n.sub("### ", "")}.map{ |m| SlugEntry.new(m)}
      else
        @headers = Nokogiri::HTML(doc.content).xpath("//h3").map(&:content).map{ |m| SlugEntry.new(m)};
      end
    end

    def to_liquid
      {
        "slug"=> @slug,
        "content"=> @content,
        "headers"=> @headers,
        "data"=> @data
      }
    end
  end

  class SlugEntry
    attr_reader   :title, :href

    def initialize(name)
      @title = name
      @href = @title.downcase().gsub(/[^a-zA-Z]/, "-")
    end

    def to_liquid
      {
        "title"=> @title,
        "href"=> @href,
      }
    end
  end

  class CollectionEntry
    attr_reader   :docs, :size, :slug

    def filter_drafts(docs)
      @site.config["production"] ? docs.select{ |d| d.data["draft"] != true} : docs
    end

    def initialize(docs, title, site)
      @site, @slug = site, SlugEntry.new(title)
      docs_unsorted = filter_drafts(docs.map{|doc| DocEntry.new(doc)})
      @docs = docs_unsorted.sort{|x,y | y.slug.title<=>x.slug.title}.reverse
      @size = @docs.length
    end

    def self.create_from_collection(col, site)
      CollectionEntry.new(col.docs, col.metadata["title"], site)
    end

    def to_liquid
      {
        "docs"=> @docs,
        "size"=> @size,
        "slug"=> @slug
      }
    end
  end
end

Liquid::Template.register_filter(Jekyll::BPHelpersFilters)
