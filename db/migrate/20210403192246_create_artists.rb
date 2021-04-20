class CreateArtists < ActiveRecord::Migration[6.1]
  def change
    create_table :artists do |t|
      t.string :name
      t.integer :twitter
      t.integer :insta
      t.string :occupation

      t.timestamps
    end
  end
end
