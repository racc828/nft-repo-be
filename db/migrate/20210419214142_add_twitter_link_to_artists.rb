class AddTwitterLinkToArtists < ActiveRecord::Migration[6.1]
  def change
    add_column :artists, :twitter_link, :string
  end
end
