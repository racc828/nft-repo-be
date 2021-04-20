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
            occupation: newArtist.occupation,
            twitter_followers: newArtist.twitter_followers,
            twitter_link: newArtist.twitter_link,
            insta_followers: newArtist.insta_followers,
            insta_link: newArtist.insta_followers,
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
      params.require(:artist).permit(:name, :user_id, :occupation, :insta_followers, :insta_link, :twitter_link, :twitter_followers)
    end
  
  end