require 'sinatra'
require 'haml'
require 'sass'

set :haml, { :format => :html5 }

configure do
  Rack::Mime::MIME_TYPES['.manifest'] = 'text/cache-manifest'
end

before do
  headers 'Content-Type' => 'text/html; charset=utf-8'
end

get '/', :agent => /Apple.*Mobile.*Safari/ do
  redirect '/iphone.html'
end

get '/installation.html', :agent => /Apple.*Mobile.*Safari/ do
  redirect '/iphone.html'
end

get '/' do
  haml :index
end

get '/web.css' do
  headers 'Content-Type' => 'text/css; charset=utf-8'
  sass :web
end