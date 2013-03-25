class I
  class E < I
    def initialize(*args)
      super
      puts "E"
    end
  end
end
