module Views
  class Paginate < Mustache
    def method_missing(sym, *args, &block)
      return super unless @items && @items.respond_to?(sym)
      @items.send sym, args, block if args && block
      @items.send sym, args if args
      @items.send sym, block if block
      @items.send sym
    end

    def respond_to?(sym, include_private = false)
      @items.respond_to?(sym, include_private) || super(sym, include_private)
    end
    
    def current?
      @items.current?(@page)
    end
    
    def displayed_pages
      @items.displayed_pages.collect! do |page|
        {'page' => page}
      end
    end
  end
end

