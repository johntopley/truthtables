require 'sinatra'
require 'haml'
require 'sass'

set :haml, { :format => :html5 }

before do
  headers 'Content-Type' => 'text/html; charset=utf-8'
end

get '/', :agent => /Apple.*Mobile.*Safari/ do
  #haml :iphone
  redirect '/iphone.html'
end

get '/installation', :agent => /Apple.*Mobile.*Safari/ do
  #haml :installation
  redirect '/installation.html'
end

get '/installation' do
  #haml :iphone
  redirect '/iphone.html'
end

get '/' do
  haml :index
end

get '/web.css' do
  headers 'Content-Type' => 'text/css; charset=utf-8'
  sass :web
end

get "/production.manifest" do
  content_type 'text/cache-manifest'
  File.read(File.join('public', 'production.manifest'))
end