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

#gets information from items page
get('/word/:id') do
  @item = Word.find(params[:id])
  erb(:word_list)
end
