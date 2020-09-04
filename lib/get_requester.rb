require 'open-uri'
require 'net/http'
require 'json'

class GetRequester
  
  
  def initialize(url)
    @url = url 
  end 
  
  def get_response_body 
    the_url = @url 
    uri = URI.parse(the_url)
    response = Net::HTTP.get_response(uri)
    response.body 
  end 
  
  def parse_json 
    program = JSON.parse(self.get_response_body)
   end 
end 
#require 'open-uri'
#require 'net/http'
#url = "https://learn-co-curriculum.github.io/json-site-example/endpoints#/locations.json"
#uri = URI.parse(url)
#response = Net::HTTP.get_response(uri)
#response.body