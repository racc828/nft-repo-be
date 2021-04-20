class ChangeInstaToInstaFollowers < ActiveRecord::Migration[6.1]
  def change
    rename_column :artists, :insta, :insta_followers
  end
end
