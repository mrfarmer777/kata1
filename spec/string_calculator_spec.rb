require "./app/string_calculator"

RSpec.describe StringCalculator do
  describe "#add" do
    it "treats emptry string as a zero" do
        expect(subject.add("")).to eq(0)
    end

    it "returns the number when only one is provided" do
      expect(subject.add("1")).to eq(1)
      expect(subject.add("500")).to eq(500)
      expect(subject.add("123456")).to eq(123456)
    end

    it "adds two numbers when two are provided" do
      expect(subject.add("1,2")).to eq(3)
    end
  end
end