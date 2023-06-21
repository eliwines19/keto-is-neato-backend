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

        end
    end
end