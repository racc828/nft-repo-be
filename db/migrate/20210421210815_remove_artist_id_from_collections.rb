class RemoveArtistIdFromCollections < ActiveRecord::Migration[6.1]
  def change
    remove_column :collections, :artist_id, :string
  end
end
