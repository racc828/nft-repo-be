class Api::V1::CollectionsController < ApplicationController

    def index
      collections = Collection.all.map {|collection|
        artist = Artist.find_by(id: collection.artist_id)
        {
            id: collection.id,
            start: collection.start,
            end:collection.end,
            title: artist.name,
            name: collection.name,
            artistData: artist
        }
      }
      render json: collections
    end
  
    def create
        newCollection = Collection.create(collection_params)
        artist = Artist.find_by(id: newCollection.artist_id)
        render json: {
            id: newCollection.id,
            title: "#{artist.name} - #{newCollection.name}",
            artist_id: newCollection.artist_id,
            start: newCollection.start,
            end: newCollection.end
        }
    end
  
    def show
      collection = Collection.find_by(id: params[:id])
      render json: collection
    end
  
    def destroy
      collection = Collection.find_by(id: params[:id])
      collection.destroy
      collections = Collection.all
      render json: collections
    end
  
    private
  
    def collection_params
      params.require(:collection).permit(:name, :artist_id, :start, :end)
    end
  
  end