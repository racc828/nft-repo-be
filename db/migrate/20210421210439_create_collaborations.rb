class CreateCollaborations < ActiveRecord::Migration[6.1]
  def change
    create_table :collaborations do |t|
      t.string :artist_id
      t.string :collection_id

      t.timestamps
    end
  end
end
