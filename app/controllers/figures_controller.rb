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
    @figure = Figure.create(params[:figure])
    if !params[:title][:name].empty?
      @title = Title.create(params[:title])
      @figure.titles << @title
    end

    if !params[:landmark][:name].empty?
      @landmark = Landmark.create(params[:landmark])
      @figure.landmarks << @landmark
    end

    # redirect to "/figures/#{@figure.id}"
  end

  # get "/figures/#{@figure.id}" do
  #   @figure = Figure.find(params[:id])
  #   erb :'/figures/show'
  # end

  get '/figures/:id/edit' do
    erb :'/figures/edit'
  end


end
