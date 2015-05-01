require('rspec')
require('defenition')
require('word')
require('pry')

describe(Defenition) do

  describe('#initialize') do
    it('creates a defenition on initalization') do
      test_defenition = Defenition.new('a series of events or a course of action that will lead to a particular outcome.')
      expect(test_defenition.defenition()).to(eq('a series of events or a course of action that will lead to a particular outcome.'))
    end
  end

end

describe(Word) do

  describe('#save') do
    it('saves a word to the list of words') do
      test_word = Word.new('road')
      test_word.save()
      expect(Word.all()).to(eq([test_word]))
    end
  end

  describe('#add_defenition') do
    it('adds a defenition to a word') do
      test_word = Word.new('road')
      test_defenition = Defenition.new('a series of events or a course of action that will lead to a particular outcome.')
      test_word.add_defenition(test_defenition)
      expect(test_word.defenition_list()).to(eq([test_defenition]))
    end
  end

end
