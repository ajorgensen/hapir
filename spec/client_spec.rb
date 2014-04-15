require 'hapir/client'

module Hapir
  describe Client do

    it 'has an api key' do
      client = Client.new("api-key")

      expect(client.hapikey).to eq "api-key"
    end

  end
end
