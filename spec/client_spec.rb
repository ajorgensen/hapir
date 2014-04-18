require 'spec_helper'

module Hapir
  describe Client do
    let(:api_key) { "api-key" }
    let(:client) { Client.new(api_key) }

    it 'has a base url' do
      expect(client.base_uri).to eq "https://api.hubspot.com"
    end

    [:get, :post, :delete, :put].each do |request_type|
      it "makes #{request_type} requests" do
        endpoint = "bar"
        full_url = "#{client.base_uri}/#{endpoint}"
        params = { :hapikey => api_key }

        RestClient.should_receive(request_type).with(full_url, params)

        client.send(request_type, endpoint)
      end
    end
  end
end
