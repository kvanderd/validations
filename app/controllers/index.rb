get '/' do
  @events = Event.all
  erb :index
end

get '/events/:id/show' do |id|
  @event = Event.find(id)
  erb :event_show
end

get '/events/new' do
  #TODO IMPLEMENT ME
  erb :event_new
end

post '/events/create' do
  #TODO IMPLEMENT ME
  @event = Event.create(params[:event])
  if @event.errors.full_messages.length > 0
    @errors = @event.errors.full_messages
    puts "8" * 80
    puts @errors
  else
  redirect "/"
  end
end
