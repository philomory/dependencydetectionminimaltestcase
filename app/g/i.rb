class G
  class I
    TYPES ||= {}
    class DuplicateItemTypeError < StandardError; end
    
    def self.new(dfn)
      content = load_content(dfn)
      klass = TYPES[content['type']] || self
      obj = klass.allocate
      obj.initialize(dfn)
    end
    
    def initialize(*args)
      puts "I"
    end
  end
end