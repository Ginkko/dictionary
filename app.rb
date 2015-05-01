require('sinatra')
require('sinatra/reloader')
require ('./lib/word')
require ('./lib/defenition')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/word_list') do
  @word_list = Word.all()
  erb(:word_list)
end

get('/word_add') do
  erb(:word_add)
end

get('/word_detail/:name') do
  @word = Word.find(params.fetch('name'))
  erb(:word_detail)
end

get('/word_detail/:name/defenition_add') do
@word = Word.find(params.fetch('name'))
erb(:defenition_add)
end

post('/word_list') do
  name = params.fetch('name')
  Word.new(name).save()
  @word_list = Word.all()
  erb(:word_list)
end

post('/word_detail') do
  @defenition = Defenition.new(params.fetch('defenition'))
  @word = Word.find(params.fetch('word_name'))
  @word.add_defenition(@defenition)
  erb(:word_detail)
end
