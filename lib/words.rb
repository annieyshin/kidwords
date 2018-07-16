class Word
  @@list = []
  attr_reader :id
  attr_accessor :name, :definition

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

  def definition_save(definition)
    @definition.push(definition)
  end

  def definition_show
    @definition
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
