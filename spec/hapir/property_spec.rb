require 'spec_helper'
require 'hapir/property'

module Hapir
  describe Property do
    it 'extracts values from the property hash' do
      property = Property.new("foo", { "value" => "baz" })

      expect(property.key).to eq "foo"
      expect(property.value).to eq "baz"
    end
  end
end
