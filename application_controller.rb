require 'bundler'
Bundler.require
require_relative 'models/model.rb'
class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end


  # post '/' do
  # 
  # erb :snack
  # end
  
  post '/' do
    erb :submission
  end
  
  get '/submission.erb' do
    # "Hello"
    erb :submission
  end
  
  post '/submission.erb' do
    meal_choice = params[:meal]
    flavor_choice= params[:flavor]
    @recipe = meals(meal_choice, flavor_choice)
    @recipe_array = @recipe.split("++")
    @title= @recipe_array[0]
    @link= @recipe_array[1]
    @image= @recipe_array[2]
    @description= @recipe_array[3]
    @title2= @recipe_array[4]
    @link2= @recipe_array[5]
    @image2= @recipe_array[6]
    @description2= @recipe_array[7]
    erb :results
  end
    
    
    
    # @breakfast_savory1
    # @recipe = meals(meal_choice, flavor_choice)
    # @breakfast_savory1 = Recipes.new("Mini Breakfast Pizzas","http://www.delish.com/cooking/recipe-ideas/recipes/a49568/mini-breakfast-pizzas-recipe/","Quick and easy mini breakfast on the go!")
    # @meal_flavor 
    
    
    
    

  

  
  # post '/' do
  # meal_choice = params[:meal]
  # # flavor_choice= params[:flavor]
  # # @recipe = meals(meal_choice, flavor_choice)
  # "it is working"
  # erb :dinner
  # end
  
  # post '/' do
  # meal_choice = params[:meal]
  # # flavor_choice= params[:flavor]
  # # @recipe = meals(meal_choice, flavor_choice)
  # "it is working"
  # erb :lunch 
  # end
  
  # get '/snack' do
  #   erb :snack
  # end

  # post '/snack' do
  #   # "great"
  #   erb :snack
  # end



end


