class Word
  @@list = []
  attr_reader :id
  attr_accessor :name

  def initialize(name)
    @name = name
    @id = @@list.length + 1
  end

  def self.clear()
    @@list = []
  end

  def self.all()
    @@list
  end

  def save()
    @@list.push(self)
  end

  def self.find(word)
    word_id = word.to_i()
    @@list.each do |item|
      if word.id == word_id
        return word
      end
    end
  end

end