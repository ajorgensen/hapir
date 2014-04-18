class Property
  attr_reader :key, :value
  def initialize(key, params)
    @key = key
    @value = params["value"]
  end
end
