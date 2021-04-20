class ChangeCollectionLinkToLink < ActiveRecord::Migration[6.1]
  def change
    rename_column :collections, :collection_link, :link
  end
end
