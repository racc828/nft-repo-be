class Api::V1::CollectionsController < ApplicationController

    def index
      collections = Collection.all
      render json: collections
    end
  
    def create
        newCollection = Collection.create(collection_params)
        artists = params[:artist_ids].map {|artist_id|
             Artist.find_by(id: artist_id)
        }
        newCollection.artists << artists
        render json: newCollection
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
      params.require(:collection).permit(:name, :start, :end)
    end
  
  end