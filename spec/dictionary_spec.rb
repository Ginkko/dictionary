require('rspec')
require('defenition')
require('word')
require('pry')

describe(Defenition) do

  describe("#initialize") do
    it('creates a defenition on initalization') do
      test_defenition = Defenition.new('a series of events or a course of action that will lead to a particular outcome.')
      expect(test_defenition.value()).to(eq('a series of events or a course of action that will lead to a particular outcome.'))
    end
  end

end

describe(Word) do
  describe("#save") do
    it('saves a word to the list of words') do
      test_word = Word.new('road')
      test_word.save()
      expect(Word.all()).to(eq([test_word]))
    end
  end

end
