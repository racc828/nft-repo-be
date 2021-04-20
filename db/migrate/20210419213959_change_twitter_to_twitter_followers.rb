class ChangeTwitterToTwitterFollowers < ActiveRecord::Migration[6.1]
  def change
    rename_column :artists, :twitter, :twitter_followers
  end
end
