require('capybara/rspec')
require('pry')
require('./app')
Capybara.app = Sinatra::Application
set(:show_expectations, false)

describe('Integration-Wrapper') do
  before() do
    Word.clear()
  end
  describe('the path to the word list page', {:type => :feature}) do
    it('shows a welcome page with a link to the word list page. On link click, displays a page with the list of words.') do
      visit('/')
      test_word = Word.new('Test')
      test_word.save()
      click_link('List of Words')
      expect(page).to have_content('Test')
    end
    it('shows a page with a prompt to add a new word and a submit button. On button click, displays a page with the list of words.') do
      visit('/word_add')
      fill_in('name', :with => 'Test')
      click_button('save_word')
      expect(page).to have_content('Test')
    end
  end
end
