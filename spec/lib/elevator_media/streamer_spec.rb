require 'rails_helper'



RSpec.describe ElevatorMedia::Streamer do
  let(:streamer) { ElevatorMedia::Streamer.new }

  context "open weather test" do
    it "should respond to the get_weather method" do
      stub_request(:any, "https://api.openweathermap.org/data/2.5/find?q=Montreal&units=metric&appid=#{ENV['OPEN_WEATHER_KEY']}")
      response = streamer.get_weather
      expect(response.code).to eq("200")
    end
  end

  context "streamer is fetching content" do
    it "should respond to the getContent method" do
      result_json = {
        "cloud_pct": 100,
        "temp": 0,
        "feels_like": 0,
        "humidity": 92,
        "min_temp": -5,
        "max_temp": 2,
        "wind_speed": 0.6,
        "wind_degrees": 3,
        "sunrise": 1639139031,
        "sunset": 1639170658
      }

      stub_request(:any, "https://weather-by-api-ninjas.p.rapidapi.com/v1/weather?city=Montreal").
        to_return(body: result_json.to_json)

      result = streamer.get_content

      body = JSON.parse(result.body)
      expect(result.code).to eq("200")
      expect(body['min_temp']).to eq(-5)
    end
  end
end
