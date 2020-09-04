# Write your code here
require 'open-uri'
require 'net/http'
require 'json'
require 'pry'

class GetRequester

  def initialize(url)
    # is a class that can be initiated by passing in a URL
    @url = url
  end

  def get_response_body
    # is an instance method on the GetRequester class
    # sends a GET request to the URL provided on initialization, returning the body of the request
    uri = URI.parse(@url)
    response = Net::HTTP.get_response(uri)
    response.body
  end

  def parse_json
    # parse_json
    # is an instance method on the GetRequester class
    # converts JSON returned from 'get_response_body' into Ruby data structures
    JSON.parse(get_response_body)
  end

end