class Word
  @@list = []
  attr_reader :id
  attr_accessor :name
  attr_accessor :definition


  def initialize(name)
    @name = name
    @definition = definition
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

  def self.find(id)
    word_id = id.to_i()
    @@list.each do |word|
      if word.id == word_id
        return word
      end
    end
  end

end
