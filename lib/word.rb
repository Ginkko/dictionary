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

  def self.find(name)
    found_word = nil
    @@word_list.each() do |word|
      found_word = word if word.name() == name
    end
    found_word
  end

  def self.clear
    @@word_list = []
  end

end
