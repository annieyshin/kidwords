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

#sending information
# post('/') do
#   definition = params["definition"]
#   word = Word.new(definition)
# # word = Word.new(definition)
#   word.save()
#   @otherlist = Word.all()
#   erb(:word)
# end

get('/word/:id') do
  @word = Word.find(params[:id])
  erb(:word)
end
