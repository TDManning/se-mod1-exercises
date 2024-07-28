require './lib/ceo'

RSpec.describe Ceo do

  describe "setup" do
    it "exists" do
      ceo = Ceo.new(15,20, "Ali", 225)
    end
    it "has base_salary and bonus attributes" do
      ceo = Ceo.new(15,20, "Ali", 225)
      expect(ceo.base_salary).to eq(15)
      expect(ceo.bonus).to eq(20)
    end
  end

  describe "Has a name, ID, and total_compensation" do
    it 'has a name and ID'
      ceo = Ceo.new(15,20, "Ali", 225)
      expect(ceo.name).to eq("Ali")
      expect(ceo.id).to eq(225)
      expect(ceo.total_compensation).to eq(35)
  end

end