# Homepage (Root path)
get '/messages' do
  @messages = Message.all
  erb :'messages/index'
end

get '/messages/new' do
  @messages = Message.all
  erb :'messages/new'
end