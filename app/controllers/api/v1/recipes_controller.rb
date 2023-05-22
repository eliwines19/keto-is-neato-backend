module Api
    module V1
        class RecipesController < ApplicationController

            def index
                games = Recipe.all
                render json: RecipeSerializer.new(games).serialized_json
            end

            def show
                game = Game.find_by_id(params[:id])
                render json: RecipeSerializer.new(game.serialized_json)
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
                recipe = Recipe.find_by_id(params[:id])

                if recipe.update
                    render json: RecipeSerializer.new(recipe).serialized_json
                else
                    render json: { error: recipe.errors.messages }, status: 422
                end
            end

            
            def destory
                recipe = recipe.find_by_id(params[:id])

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