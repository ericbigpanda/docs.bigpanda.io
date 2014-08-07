require 'rubygems'

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
      site.collections["monitoring"].docs.each{|doc| integration_docs << doc }
      site.collections["deployments"].docs.each{|doc| integration_docs << doc }
      integration_docs.each do |doc|
        puts("Saving #{doc.basename})")
        filename = "frontier/#{doc.basename}"
        File.open(File.join(site.dest, filename), "w") do |file|
          file.write(replace_include(doc.content))
        end
        site.static_files << Jekyll::FrontierMarkdownFile.new(site, site.dest, "/", filename)
      end
    end

    def replace_include(content)
      mother_of_all_rexexes = /(<\!\-\-\sinclude\-replace\-start\s\-\-\>(?<=\<\!\-\-\sinclude\-replace\-start\s\-\-\>).*(?=\<\!\-\-\sinclude\-replace\-end\s\-\-\>)<\!\-\-\sinclude\-replace\-end\s\-\-\>)/m
      content.gsub(mother_of_all_rexexes, "")
    end
  end

  class FrontierMarkdownFile < StaticFile
    # Override write as the search.json index file has already been created 
    def write(dest)
      true
    end
  end
  
end
