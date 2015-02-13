get '/' do
  @aunty = params[:aunty]
  puts @aunty
  # Look in app/views/index.erb
  erb :index
end

post '/aunty' do
  speech = params[:user_input]
  # redirect to("/?aunty=#{speech}")
  if speech == speech.upcase
    redirect to("/?aunty=LOLZ")
  else
    redirect to("/?aunty=Speak up, kiddo!")
  end
end