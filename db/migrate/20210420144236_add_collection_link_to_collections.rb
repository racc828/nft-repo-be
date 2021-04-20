class AddCollectionLinkToCollections < ActiveRecord::Migration[6.1]
  def change
    add_column :collections, :collection_link, :string
  end
end
