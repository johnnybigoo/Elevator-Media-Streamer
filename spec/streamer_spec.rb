require 'ElevatorMedia/Streamer'



describe "Streamer" do
  let(:streamer) { ElevatorMedia::Streamer.new }                                                                             
    context "this a first test" do                                                            
      it "prints" do                                                                                              
      expect(streamer.test).to eq("Hello World!")    
    end                                                                                                             
  end   

  context "streamer basics" do
        it "should respond to getContentTest method" do
            expect(streamer).to respond_to(:getContentTest)       
        end
  end

  context "streamer is fetching content" do
    it "should respond to getContent method" do
        expect(streamer).to respond_to(:getContent)       
    end
  end
end
