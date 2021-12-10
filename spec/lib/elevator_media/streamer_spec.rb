require 'rails_helper'



RSpec.describe ElevatorMedia::Streamer do
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
      result = streamer.get_content
      # binding.pry
      # expect(streamer).to respond_to(:get_content)
      expect(result.include?('temp')).to eq(true)
    end
  end

  context "open weather test" do
    it "should respond to the get_weather method" do
      response = streamer.get_weather
      # binding.pry
    end
  end
end
