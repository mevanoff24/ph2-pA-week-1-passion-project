get '/workout' do
  erb :workout

end

post '/workout' do
  redirect '/workout'
end
