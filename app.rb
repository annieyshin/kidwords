require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/words')

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

post('/word/:id') do
  @word = Word.find(params[:id])
  definition = params["definition"]
  @word.add_definition(params["definition"])
  erb(:word)
end
