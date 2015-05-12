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
        puts("Saving #{doc.basename}...")
        integration_docs << doc.basename
        filename = "frontier/#{doc.basename}"
        File.open(File.join(site.dest, filename), "w") do |file|
          file.write(replace_include(BPHelpersFilters::replace_docs_include(doc.content)))
        end
        site.static_files << Jekyll::FrontierMarkdownFile.new(site, site.dest, "/", filename)
      end

      media_root = Pathname.new "#{site.source}/media"
      media_files = Dir.glob("#{site.source}/media/**/*").reject {|fn| File.directory?(fn)}.map{|media_file| File.absolute_path("media/#{Pathname.new(media_file).relative_path_from(media_root)}")}
      media_files.each do |media_file| 
        filename = File.basename(media_file)
        target = "#{site.dest}/frontier/#{filename}"
        FileUtils.cp(media_file, target) 
        site.static_files << Jekyll::FrontierMarkdownFile.new(site, site.dest, "/frontier/", filename)
      end

    end

    def replace_include(content)
      grandma_of_all_regexes = /(<\!\-\-\seditor\-only\-start\s\-\-\>(?<=\<\!\-\-\seditor\-only\-start\s\-\-\>)(?:(.*?))(?=\<\!\-\-\seditor\-only\-end\s\-\-\>)<\!\-\-\seditor\-only\-end\s\-\-\>)/m
      mother_of_all_regexes = /(<\!\-\-\sdocs\-only\-start\s\-\-\>(?<=\<\!\-\-\sdocs\-only\-start\s\-\-\>)(?:(.*?))(?=\<\!\-\-\sdocs\-only\-end\s\-\-\>)<\!\-\-\sdocs\-only\-end\s\-\-\>)/m
      uncle_of_all_regexes = /(<\!\-\-\sapp\-only\-start\s\-\-\>|<\!\-\-\sapp\-only\-end\s\-\-\>)/m
      content.gsub(grandma_of_all_regexes, "").gsub(mother_of_all_regexes, "").gsub(uncle_of_all_regexes, "")
    end
  end

  class FrontierMarkdownFile < StaticFile
    # Override write as the search.json index file has already been created 
    def write(dest)
      true
    end
  end
  
end
