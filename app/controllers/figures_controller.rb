class FiguresController < ApplicationController

  get '/figures' do
    @figures = Figure.all
    erb :'/figures/index'
  end

  get '/figures/new' do
    @titles = Title.all
    @landmarks = Landmark.all
    erb :'/figures/new'
  end

  post '/figures' do
    @figure = Figure.create(name: params[:figure][:name], title_ids: params[:figure][:title_ids], landmark_ids: params[:figure][:landmark_ids])
    redirect to '/figures'
  end


  get '/figures/edit' do
    erb :'/figures/edit'
  end


end
