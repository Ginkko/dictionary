class Word
  @@word_list = []

  attr_reader()

  def initialize(name)
    @name = name
  end

  def save
    @@word_list.push(self)
  end

  def self.all
    @@word_list
  end

end
