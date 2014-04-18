require 'spec_helper'

module Hapir::Api
  describe Contacts do
    let(:client) { Hapir::Client.new(:hapikey => 'demo') }

    describe 'POST /contacts/v1/contact' do
      pending 'creates a new contact'
    end

    pending 'update a contact'
    pending 'create or update a contact'
    pending 'create or update a group of contacts'
    pending 'delete a contact'
    pending 'get all contact'
    pending 'get recent contacts'
    pending 'get contact by id'
    pending 'get group of contacts by id'
    pending 'get contact by email'
    pending 'get group of contacts by email'
    pending 'get contact by user token'
    pending 'get group of contacts by user'
    pending 'search for contacts'
    pending 'get contact statistics'
  end
end
