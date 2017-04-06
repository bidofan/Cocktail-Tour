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

	def destroy
	  @recipes = Recipe.find(params[:id])
	  @recipes.destroy
	  redirect_to recipes_path
	end
	

	def update
	  @recipes = Recipe.find(params[:id])
	  if @recipes.update(recipe_params)
	    redirect_to @recipes
	  else
	    render 'edit'
	  end
	end

	private
		def recipe_params
			params.require(:recipe).permit(:name, :recipe)
		end
end
