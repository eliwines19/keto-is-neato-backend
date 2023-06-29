class RecipesController < ApplicationController

    before_action :redirect_if_not_logged_in

    def home
        @user = current_user
        @recipes = Recipe.all
    end

    def new
        @recipe = Recipe.new
    end

    def create
        @recipe = Recipe.create(recipe_params)
        if @recipe.save
            redirect_to '/recipes/home'
        else
            redirect_to '/recipes/new'
        end
    end

    def update
    end


    def destroy
        @recipe.destroy
        redirect_to '/recipes/home'
    end

    private

    def recipe_params
        params.require(:recipe).permit(:name, :ingredients, :image_url, :category_id)
    end

end