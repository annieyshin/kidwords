require('pry')
class Definition
  @@deflist = []

  attr_reader(:definition, :define_list)

  def initialize(definition)
    @definition = []
  end

  def self.clear()
    @@deflist = []
  end

  def self.all
    @@deflist
  end

  def save
    @@deflist.push(self)
  end

  def self.find(def_id)
    definition_id = def_id.to_i()
    @@deflist.each do |definition|
      if definition.def_id == definition_id
        return definition
      end
    end
  end

end
