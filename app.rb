require 'twilio-ruby'
require 'sinatra'
require './models/messager'

get '/' do
  haml :index
end

post '/messages' do
  messager = Messager.new
  messager.send_text("Hello.")

  redirect '/'
end
