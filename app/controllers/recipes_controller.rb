class RecipesController < ApplicationController

    before_action :redirect_if_not_logged_in

    def home
        @user = current_user
        @recipes = Recipe.all
    end

    # need to update the create, update, and delete methods for recipes controller to reflect the MVC structure

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

        if recipe.save
            render json: RecipeSerializer.new(recipe).serialized_json
        else
            render json: { error: recipe.errors.messages }, status: 422
        end
    end

    def update
        # recipe = Recipe.find_by(id: params[:id])

        # if recipe.update(name: params[:name], ingredients: params[:ingredients], image_url: params[:image_url])
        #     render json: RecipeSerializer.new(recipe).serialized_json
        # else
        #     render json: { error: recipe.errors.messages }, status: 422
        # end
    end


    def destroy
        # recipe = Recipe.find_by(id: params[:id])

        # if recipe.destroy
        #     head :no_content
        # else
        #     render json: { error: recipe.errors.messages }, status: 422
        # end
    end

    private

    def recipe_params
        params.require(:recipe).permit(:name, :ingredients, :image_url, :category_id)
    end

end