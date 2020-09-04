# Write your code here
require 'pry'
require 'open-uri'
require 'net/http'

require 'json'

class GetRequester
attr_accessor :url, :uri, :response
@@all = []

    def initialize(url)
    # @url = "https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json"
    @url = url
    @uri = URI.parse(@url)
    
    @uri.open

    end

    def get_response_body
    response = Net::HTTP.get_response(uri)
    response.body
    # binding.pry
    end

    def parse_json
        # self.get_response_body
        JSON.parse(self.get_response_body)

    end


    # binding.pry




end

