class AddInstaLinkToArtists < ActiveRecord::Migration[6.1]
  def change
    add_column :artists, :insta_link, :string
  end
end
