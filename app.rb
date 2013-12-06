require 'twilio-ruby'
require 'sinatra'
require './models/messager'

get '/' do
  haml :index
end

post '/messages' do
  body = params[:body]
  messager = Messager.new
  messager.send_text(body)

  redirect '/'
end
