require 'spec_helper'
require 'uri'
require 'net/http'
require 'openssl'
require 'json'
module ElevatorMedia
  class Streamer
    def test
      "Hello World!"
    end

    def get_content_test
      return "<div>Interesting content</test>"
    end

    def get_weather
      uri = URI("https://api.openweathermap.org/data/2.5/find?q=Montreal&units=metric&appid=#{ENV['OPEN_WEATHER_KEY']}")

      http = Net::HTTP.new(uri.host, uri.port)

      http.use_ssl = true
      http.verify_mode = OpenSSL::SSL::VERIFY_NONE

      request = Net::HTTP::Get.new(uri) 
      response = http.request(request)

      response
    end

    def get_content
      uri = URI('https://weather-by-api-ninjas.p.rapidapi.com/v1/weather?city=Montreal')

      http = Net::HTTP.new(uri.host, uri.port)
      
      http.use_ssl = true
      http.verify_mode = OpenSSL::SSL::VERIFY_NONE

      request = Net::HTTP::Get.new(uri)
      request["x-rapidapi-host"] = ENV['WEATHER_HOST']
      request["x-rapidapi-key"] = ENV['WEATHER_KEY']
      
      response = http.request(request)

      response
      end
    end
  end

