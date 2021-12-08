require 'uri'
require 'net/http'
require 'openssl'
require 'json'


module ElevatorMedia
  class Streamer
    puts "Hello"

    def test
      "Hello World!"
    end

    def get_content_test
      return "<div>Interesting content</test>"
    end

    def get_content
      uri = URI('https://weather-by-api-ninjas.p.rapidapi.com/v1/weather?city=Montreal')

      http = Net::HTTP.new(uri.host, uri.port)
      
      http.use_ssl = true
      http.verify_mode = OpenSSL::SSL::VERIFY_NONE

      request = Net::HTTP::Get.new(uri)
      request["x-rapidapi-host"] = 'weather-by-api-ninjas.p.rapidapi.com'
      request["x-rapidapi-key"] = '95afaf8c08msh56751ed7f3684fep1a7d90jsn60848e38e477'  
      
      # Tried ENV variables, not accepted
      # ENV["WEATHER_KEY"]
      # ENV["WEATHER_HOST"]
      
      response = http.request(request)
      puts response.read_body

      return JSON[response.body] if response.is_a?(Net::HTTPSuccess)
      end
    end
  end

