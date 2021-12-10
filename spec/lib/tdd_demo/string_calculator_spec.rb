require 'rails_helper'

RSpec.describe TddDemo::StringCalculator do
  let(:string_calculator) {TddDemo::StringCalculator.new}
  describe ".add" do
    context "test for an empty string" do
      it 'returns zero' do
        expect(string_calculator.add("")).to eq({size: 0, value: nil})
      end
    end
    context "test for a string" do
      it 'returns 4' do
        expect(string_calculator.add("2345")).to eq({size: 4, value: "2345"})
      end
    end
    context "test for a string with stripped cars" do
      it 'returns 3' do
        expect(string_calculator.add("2A45")).to eq({size: 3, value: "245"})
      end
    end
  end
end