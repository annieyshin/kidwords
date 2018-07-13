require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/kids_words')

#home page is the /
get('/') do
  @list = Word.all()
  erb(:list)
end

#sending information
post('/') do
  name = params["name"]
  word = Word.new(name)
  word.save()
  @list = Word.all()
  erb(:list)
end

get('/word/:id') do
  @word = Word.find(params[:id])
  erb(:word)
end

#sending information
post('/word/:id') do
  word_define = params["definition"]
  word_definition = Definition.new(defintion)
  word_definition.save()
  @@def_list = Definition.all()
  erb(:word)
end
