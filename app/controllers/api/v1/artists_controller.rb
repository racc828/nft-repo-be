class Api::V1::ArtistsController < ApplicationController

    def index
      artists = Artist.all
      render json: artists
    end
  
    def create
        newArtist = Artist.create(artist_params)
        render json: {
            id: newArtist.id,
            name: newArtist.name,
            user_id: newArtist.user_id
        }
   
    end
  
    def show
      artist = Artist.find_by(id: params[:id])
      render json: artist
    end
  
    def destroy
      artist = Artist.find_by(id: params[:id])
      artist.destroy
      artists = Artist.all
      render json: artists
    end
  
    private
  
    def artist_params
      params.require(:artist).permit(:name, :user_id)
    end
  
  end