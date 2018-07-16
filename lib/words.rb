class Word
  @@list = []
  attr_reader :id
  attr_accessor :name

  def initialize(name)
    @name = name
    @id = @@list.length + 1
    @definition = []

  end

  def self.all()
    @@list
  end

  def self.clear()
    @@list = []
  end

  def save()
    @@list.push(self)
  end

  def self.find(id)
    word_find = nil
    word_id = id.to_i()
    @@list.each do |word|
      if word.id == word_id
        word_find = word
      end
    end
    word_find
  end

end
