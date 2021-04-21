class CollectionSerializer < ActiveModel::Serializer
  attributes :id, :name, :start, :end, :artists, :droptypes

  def artists
    object.collaborations.map do |ut|
      ArtistSerializer.new(ut.artist)
    end
  end

end
