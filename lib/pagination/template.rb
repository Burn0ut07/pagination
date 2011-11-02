module Pagination
  # This class can be used by itself, although there's a `Pagination::Helper` 
  # available to provide convenience methods at your disposal.
  #
  # Basic Usage:
  #
  #     collection = Pagination.paginate(dataset, :page => 1)
  #     Pagination::Template.new(collection).render
  #
  class Template
    ROOT = File.join(File.dirname(__FILE__), '..', '..', 'views')
    
    attr :items
  
    # Initialize with your paginated collection.
    #
    # == Paramaters:
    # items::
    #   a `Pagination::Collection` object return by `Pagination.paginate`.
    def initialize(items)
      @items = items
    end
  
    # Displayed the standard pagination markup as provided by the
    # `Pagination` library.
    #
    # This uses Haml if Haml is required already. Else it uses ERB.
    #
    # == Returns:
    # The actual HTML for the pagination.
    def render
      if engine.respond_to?(:render)
        if engine.class == Views::Paginate
          engine.render
        elsif
          engine.render(Object.new, :items => items)
        end
      else
        engine.result(binding)
      end
    end
  
    # This is used by the command line tool to spit out the markup.
    #
    # == Parameters:
    # type::
    #   either 'haml', 'erb', or 'mustache'
    #
    # == Returns:
    # The actual markup source.
    def self.markup(type)
      puts __send__(type)
    end
  
  protected
    def self.haml
      File.read(File.join(ROOT, 'paginate.haml'))
    end

    def self.erb
      File.read(File.join(ROOT, 'paginate.erb'))
    end
    
    def self.mustache
      File.read(File.join(ROOT, 'paginate.mustache'))
    end

  private
    def engine
      @engine ||= 
        if defined?(Haml)
          Haml::Engine.new(self.class.haml)
        elsif defined?(Mustache)
          Views::Paginate.new
        else
          require 'erb' if not defined?(ERB)
          ERB.new(self.class.erb)
        end
    end

  end
end
