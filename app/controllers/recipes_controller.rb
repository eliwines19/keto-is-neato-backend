class RecipesController < ApplicationController

    before_action :redirect_if_not_logged_in

    def home
        @user = current_user
        @recipes = Recipe.all
    end

    def new
        @recipe = Recipe.new
        @categories = Category.all
    end

    def create
        @recipe = Recipe.create(
            name: recipe_params[:name],
            ingredients: recipe_params[:ingredients].split(", "),
            image_url: recipe_params[:image_url],
            category_id: recipe_params[:category_id]
        )
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
        params[:recipe]
    end

end