class Word
  @@word_list = []
  attr_reader(:name, :defenition_list)

  def initialize(name)
    @name = name
    @defenition_list = []
  end

  def save
    @@word_list.push(self)
  end

  def add_defenition(defenition)
    @defenition_list.push(defenition)
  end

  def self.all
    @@word_list
  end

end
