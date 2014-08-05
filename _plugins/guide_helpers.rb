require 'rubygems'
require 'nokogiri'

module Jekyll
  module GuideHelpersFilter
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
  end
end
Liquid::Template.register_filter(Jekyll::GuideHelpersFilter)
