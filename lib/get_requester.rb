require 'json'
require 'net/http'
require 'open-uri'
require 'pry'

class GetRequester
    @@all = []

    attr_reader :url

    def initialize(url)
        @url = url
        @@all << @url
    end

    def get_response_body
        uri = URI.parse(@url)
        response = Net::HTTP.get_response(uri)
        response.body
    end

    def parse_json
        parsed = JSON.parse(self.get_response_body)

    end
end

x = GetRequester.new('https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json')
binding.pry


# gem "awesome_print", git: "git@github.com:awesome-print/awesome_print.git"