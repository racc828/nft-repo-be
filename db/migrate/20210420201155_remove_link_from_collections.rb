class RemoveLinkFromCollections < ActiveRecord::Migration[6.1]
  def change
    remove_column :collections, :link, :string
  end
end
