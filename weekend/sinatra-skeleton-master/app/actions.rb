# Homepage (Root path)
get '/messages' do
  @messages = Message.all
  erb :'messages/index'
end

get '/messages/new' do
  @messages = Message.all
  erb :'messages/new'
end

post '/messages' do
  binding.pry
  @message = Message.new(
    title:   params[:title],
    content: params[:content],
    author:  params[:author]
  )
   @message.save
    redirect '/messages'
end