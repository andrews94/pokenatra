require "sinatra"
require "sinatra/reloader"
require 'active_record'

require_relative 'db/connection.rb'

require_relative 'models/pokemon'


get "/pokemons" do
  @pokemons = Pokemon.all
     erb :"pokemons/index"
end

get '/pokemons/new' do
     erb :"pokemons/new"
end

get '/pokemons/:id' do
  @pokemon = Pokemon.find(params[:id])
  erb :"pokemons/show"
end

get "/pokemons/:id/edit" do
  @pokemon = Pokemon.find(params[:id])
  erb(:"pokemons/edit")
end
