require "./app/string_calculator"

RSpec.describe StringCalculator do
  describe "#add" do
    it "treats emptry string as a zero" do
        expect(subject.add("")).to eq(0)
    end
  end
end