require 'hapir/property'

module Hapir
  class Contact
    ATTRS = %w(vid, is-contact)
    attr_reader :vid, :is_contact, :properties

    def initialize(params)
      ATTRS.each do |attr|
        instance_variable_set(:"@#{attr}", params[attr])
      end

      @vid = params["vid"]
      @is_contact = params["is-contact"]

      @properties = params["properties"].collect do |key, params|
        Property.new(key, params)
      end
    end

    def is_contact?
      is_contact
    end

  end
end
