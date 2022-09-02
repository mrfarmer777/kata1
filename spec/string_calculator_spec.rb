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

    it "returns the sum of two numbers when two are provided" do
      expect(subject.add("1,2")).to eq(3)
    end

    it "returns the sum of all comma-separated numbers provided" do
      expect(subject.add("1,2,3")).to eq(6)
      expect(subject.add("10,56,1,604")).to eq(671)
      expect(subject.add("1,2,3,4,5,6,7,8,9,10")).to eq(55)
    end

    it "handles new lines and commas between numbers" do
      expect(subject.add("1\n2,3")).to eq(6)
      expect(subject.add("1\n2\n3")).to eq(6)
    end
  end
end