class ArtistSerializer < ActiveModel::Serializer
  attributes :id, :twitter_followers, :twitter_link, :occupation, :insta_link, :insta_followers, :name
end
