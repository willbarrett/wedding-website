require 'sinatra'
require 'rdiscount'
require 'sass'

set :markdown, layout_engine: :erb

get '/stylesheet.css' do
  sass :stylesheet
end

get '/' do
  @title = "Will and Karen are getting Married!"
  markdown :index, layout: :home
end

get '/interest' do
  @title = "Will you come?"
  erb :interest
end

post '/interest' do

end
