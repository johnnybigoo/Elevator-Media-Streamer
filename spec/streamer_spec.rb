require 'elevator_media/streamer'
require 'pry'


RSpec.describe "Streamer" do
  let(:streamer) { ElevatorMedia::Streamer.new }
    context "this a first test" do
      it "prints Hello World!" do
      expect(streamer.test).to eq("Hello World!")
    end
  end

  context "streamer basics" do
    it "should respond to the getContentTest method" do
      expect(streamer).to respond_to(:get_content_test)
    end
  end

  context "streamer is fetching content" do
    it "should respond to the getContent method" do
      # binding.pry
      result = streamer.get_content
      expect(streamer).to respond_to(:get_content)
      expect(result.include?('temp')).to eq(true)
    end
  end

  streamer = ElevatorMedia::Streamer.new

  context "open weather test" do
    it "should respond to get_open_weather" do
      binding.pry
      url = streamer.get_open_weather
      expect(url).to eq("TESTE")
    end
  end
end
