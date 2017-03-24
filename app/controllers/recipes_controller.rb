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

	private
		def recipe_params
			params.require(:recipes).permit(:text, :recipe)
		end
end
