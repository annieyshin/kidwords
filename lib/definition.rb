require('pry')
class Definition
  @@definition_list = []
  attr_reader(:definition, :define_list)

  def initialize(attributes)
    @definition = attributes.fetch(:definition)
  end

  def self.all
    @@definition_list
  end

  def self.clear()
    @@definition_list = []
  end

  def save
    @@definition_list.push(self)
  end

  def self.find(def_id)
    definition_id = def_id.to_i()
    @@definition_list.each do |definition|
      if definition.def_id == definition_id
        return definition
      end
    end
  end

end
