module Hapir
  class Client
    attr_reader :hapikey

    def initialize(hapikey)
      @hapikey = hapikey
    end

  end
end
