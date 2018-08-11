class FiguresController < ApplicationController

  get '/figures' do
    @figures = Figure.all
    erb :'/figures/index'
  end

  get '/figures/new' do
    @titles = Title.all
    erb :'/figures/new'
  end

  post '/figures' do
    Figure.create(name: params[:title][:name])
    redirects to '/figures/index'
  end


  get '/figures/edit' do
    erb :'/figures/edit'
  end


end
