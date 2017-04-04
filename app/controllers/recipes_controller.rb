class RecipesController < ApplicationController
	def index
		@recipes = Recipe.all
	end

	def show
		@recipes = Recipe.find(params[:id])	
	end

	def new
		@recipes = Recipe.new
	end

	def edit
		@recipes = Recipe.find(params[:id])
	end

	def create
		@recipes = Recipe.new(recipe_params)
		if @recipes.save
			redirect_to @recipes
		else 
			render 'new'
		end
	end

	private
		def recipe_params
			params.require(:recipe).permit(:name, :recipe)
		end
end
