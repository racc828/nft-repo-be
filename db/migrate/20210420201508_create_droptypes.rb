class CreateDroptypes < ActiveRecord::Migration[6.1]
  def change
    create_table :droptypes do |t|
      t.string :collection_id
      t.string :type
      t.string :link

      t.timestamps
    end
  end
end
