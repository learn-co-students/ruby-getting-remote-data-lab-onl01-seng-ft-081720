require 'net/http'
require 'open-uri'
require 'json'

class GetRequester

    def initialize(url)
        @url = ''
    end

    def get_response_body
        uri = URI.parse(URL)
        response = Net::HTTP.get_response(uri)
        response.body
      end

      def parse_json
        response_body = JSON.parse(self.get_response_body)
        # programs.collect do |program|
        # program["agency"] 
      end
end












# require 'net/http'
# require 'open-uri'
# require 'json'
 
# class GetRequester
 
#   URL = "http://data.cityofnewyork.us/resource/uvks-tn5n.json"
 
#   def get_response
#     uri = URI.parse(URL)
#     response = Net::HTTP.get_response(uri)
#     response.body
#   end
 
# end
 
# Requester = GetRequester.new.get_programs
# puts programs
