class AddArtistIdToCollections < ActiveRecord::Migration[6.1]
  def change
    add_column :collections, :artist_id, :integer
  end
end
