require 'spec_helper'
require 'pry'
require 'hapir/contact'

module Hapir
  describe Contact do
    let(:fixture) { read_fixture('contact.json') }

    it 'parses the params into properties' do
      contact = Contact.new(fixture)

      expect(contact.vid).to eq fixture["vid"]
      expect(contact.is_contact?).to eq fixture["is-contact"]
      expect(contact.properties).to_not be_empty
    end
  end
end
