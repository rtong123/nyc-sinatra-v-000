class FiguresController < ApplicationController

  get '/figures/new' do
    erb :'/figures/new'
  end

  post '/figures' do
  end

  get '/figures' do
    @figures = Figure.all
  end

  get '/figures/edit' do
    erb :'/figures/edit'
  end


end
