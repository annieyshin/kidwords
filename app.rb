require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/kids_words')

#home page is the /
get('/') do
  @list = Item.all()
  erb(:list)
end

#sending information
post('/') do
  name = params["name"]
  item = Word.new(name)
  item.save()
  @list = Word.all()
  erb(:list)
end

#gets information from items page
get('/word/:id') do
  @item = Word.find(params[:id])
  erb(:item)
end
