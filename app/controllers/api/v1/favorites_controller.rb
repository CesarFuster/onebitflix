class Api::V1::FavoritesController < ApplicationController

  def index
    @favorites = current_user.favorites.all
    render ​json: Api::V1::WatchableSerializer.new(@favorites.map(&​:favoritable​)).serialized_json
  end

  def create
    @favorite = Favorite.new(favorite_params)
    if​ @favorite.save
      head ​:ok
    else
      render ​json:​ { ​errors:​ @favorite.errors.full_messages }, ​status: :unprocessable_entity
    end
  end

  def destroy
    @favorite.destroy
    head ​:ok
  end

end
