module Api
    module V1
        class RecipesController < ApplicationController

            skip_before_action :verify_authenticity_token
            protect_from_forgery with: :null_session

            def index
                recipes = Recipe.all
                render json: RecipeSerializer.new(recipes).serialized_json
            end

            def show
                recipe = Recipe.find_by(id: params[:id])
                render json: RecipeSerializer.new(recipe).serialized_json
            end

            def create
                recipe = Recipe.new(recipe_params)

                if recipe.save
                    render json: RecipeSerializer.new(recipe).serialized_json
                else
                    render json: { error: recipe.errors.messages }, status: 422
                end
            end

            def update
                recipe = Recipe.find_by(id: params[:id])

                if recipe.update(name: params[:name], ingredients: params[:ingredients], image_url: params[:image_url])
                    render json: RecipeSerializer.new(recipe).serialized_json
                else
                    render json: { error: recipe.errors.messages }, status: 422
                end
            end

            
            def destroy
                recipe = Recipe.find_by(id: params[:id])

                if recipe.destroy
                    head :no_content
                else
                    render json: { error: recipe.errors.messages }, status: 422
                end
            end

            private

            def recipe_params
                params.require(:recipe).permit(:name, :ingredients, :image_url)
            end

        end
    end
end