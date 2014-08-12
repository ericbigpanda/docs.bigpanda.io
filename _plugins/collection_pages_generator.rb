require_relative 'bp_helpers'
module Jekyll
  class CollectionsGenerator < Generator
    def generate(site)
      Jekyll::BPHelpersFilters.get_sorted_collections('', site).each do |col|
        site.pages << CollectionsPage.new(site, col) unless col.size == 0 
      end
    end
  end

  class CollectionsPage < Page
    ATTRIBUTES_FOR_LIQUID = %w[
      content,
      collection
    ]

    def initialize(site, collection)
      @site, @collection = site, collection
      @layout = 'collection'
      self.ext = '.html'
      self.basename = 'index'
      self.data = {
          'layout' => @layout,
          'type' => 'collection',
          'collection' => collection,
          'url' => File.join('/',
                     @collection.name,
                     'index.html')
      }
    end

    def render(layouts, site_payload)
      payload = {
          'page' => self.to_liquid,
      }.merge(site_payload)
      do_layout(payload, layouts)
    end

    def to_liquid(attr = nil)
      self.data.merge({
                               'content' => self.content,
                           })
    end

    def destination(dest)
      File.join('/', dest, @collection.name, 'index.html')
    end
  end
end
