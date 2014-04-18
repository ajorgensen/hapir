require 'restclient'
require 'hapir/api/contacts'

module Hapir
  class Client
    def initialize(hapikey)
      @hapikey = hapikey
      @client = RestClient
    end

    def base_uri
      "https://api.hubspot.com"
    end

    def get(endpoint, params = {})
      @client.get full_url(endpoint), request_params(params)
    end

    def post(endpoint, params = {})
      @client.post full_url(endpoint), request_params(params)
    end

    def delete(endpoint, params = {})
      @client.delete full_url(endpoint), request_params(params)
    end

    def put(endpoint, params = {})
      @client.put full_url(endpoint), request_params(params)
    end

    private

    def full_url(endpoint)
      "#{base_uri}/#{endpoint}"
    end

    def request_params(params)
      params.merge({:hapikey => @hapikey})
    end
  end
end
