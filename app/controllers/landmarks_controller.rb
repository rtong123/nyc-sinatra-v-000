class LandmarksController < ApplicationController

get '/landmarks' do
  @landmarks = Landmark.all
  erb :'/landmarks/index'
end

get '/landmarks/new' do
  erb :'/landmarks/new'
end

post '/landmarks' do
 @landmark = Landmark.create(name: params[:name], year_completed: params[year_completed])
end

end
