class Api::V1::DroptypesController < ApplicationController

    def index
      droptype = Droptype.all
      render json: droptype
    end
  
    def create
        newDroptype = Droptype.create(droptype_params)
        render json: {
            id: newDroptype.id,
            collection_id: newDroptype.collection_id,
            link: newDroptype.link,
            dtype: newDroptype.dtype
        }
    end

    def show
        droptype = Droptype.find_by(id: params[:id])
        render json: droptype
    end
  
    private
  
    def droptype_params
      params.require(:droptype).permit(:collection_id, :link, :dtype)
    end
  
  end