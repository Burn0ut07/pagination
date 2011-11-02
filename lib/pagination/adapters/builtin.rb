module Pagination
  class ArrayAdapter < Collection
    def initialize(dataset, options = {})
      super

      @dataset = dataset
      @start   = (page - 1) * per_page
    end
    
    def results
      @dataset[@start, @per_page + @start - 1]
    end
  end
end