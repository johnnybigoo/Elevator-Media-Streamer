require 'dotenv'
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

    def get_open_weather
      "https://api.openweathermap.org/data/2.5/find?q=Montreal&units=metric&appid=#{ENV['OPEN_WEATHER_KEY']}"
    end

    def get_content
      src='#{self.get_open_weather}'

      # uri = URI("api.openweathermap.org/data/2.5/weather?q=Montreal&appid=#{ENV['OPEN_WEATHER_KEY']}")
      uri = URI('https://weather-by-api-ninjas.p.rapidapi.com/v1/weather?city=Montreal')

      http = Net::HTTP.new(uri.host, uri.port)
      
      http.use_ssl = true
      http.verify_mode = OpenSSL::SSL::VERIFY_NONE

      request = Net::HTTP::Get.new(uri)
      request["x-rapidapi-host"] = ENV['WEATHER_HOST']
      request["x-rapidapi-key"] = ENV['WEATHER_KEY']  
      
      response = http.request(request)
      puts response.read_body

      return JSON[response.body] if response.is_a?(Net::HTTPSuccess)
      end
    end
  end

