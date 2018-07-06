require('rspec')
require('kids_words')

describe("Word") do
  before() do
    Word.clear()
  end

  describe(".all") do
    it("is empty at first") do
      expect(Word.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("saves a word to the list of words") do
      word = Word.new("smallpox")
      word.save()
      expect(Word.all()).to(eq([word]))
    end
  end

  # describe(".clear") do
  #   it("clears all items from the list") do
  #     item = Item.new("tacos")
  #     item.save()
  #     Item.clear()
  #     expect(Item.all()).to(eq([]))
  #   end
  # end


  # end
end
