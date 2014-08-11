require 'rubygems'
require 'pathname'

module Jekyll

  class FrontierMarkdown < Generator

    def initialize(config = {})
      super(config)
    end

    def generate(site)
      puts 'Collecting integration guides to save for frontier'

      Dir::mkdir(site.dest) unless File.directory?(site.dest)
      Dir::mkdir(site.dest + "/frontier") unless File.directory?(site.dest + "/frontier")
     
      integration_docs = []
      site.collections["integrations"].docs.each do |doc|
        puts("Saving #{doc.basename})")
        integration_docs << doc.basename
        filename = "frontier/#{doc.basename}"
        File.open(File.join(site.dest, filename), "w") do |file|
          file.write(replace_include(doc.content))
        end
        site.static_files << Jekyll::FrontierMarkdownFile.new(site, site.dest, "/", filename)
      end

      media_root = Pathname.new "#{site.source}/media"
      media_files = Dir.glob("#{site.source}/media/**/*").reject {|fn| File.directory?(fn)}.map{|media_file| Pathname.new(media_file).relative_path_from media_root}


      json = JSON.generate({:integrations=> integration_docs, :media_files=>media_files})
      filename = "frontier/integrations.json"
      File.open(File.join(site.dest, filename), "w") do |file|
        file.write(json)
      end
      site.static_files << Jekyll::FrontierMarkdownFile.new(site, site.dest, "/", filename)

    end

    def replace_include(content)
      mother_of_all_regexes = /(<\!\-\-\sdocs\-only\-start\s\-\-\>(?<=\<\!\-\-\sdocs\-only\-start\s\-\-\>).*(?=\<\!\-\-\sdocs\-only\-end\s\-\-\>)<\!\-\-\sdocs\-only\-end\s\-\-\>)/m
      uncle_of_all_regexes = /(<\!\-\-\sapp\-only\-start\s\-\-\>|<\!\-\-\sapp\-only\-end\s\-\-\>)/m
      content.gsub(mother_of_all_regexes, "").gsub(uncle_of_all_regexes, "")
    end
  end

  class FrontierMarkdownFile < StaticFile
    # Override write as the search.json index file has already been created 
    def write(dest)
      true
    end
  end
  
end
