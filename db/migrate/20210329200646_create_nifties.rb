class CreateNifties < ActiveRecord::Migration[6.1]
  def change
    create_table :nifties do |t|
      t.string :name

      t.timestamps
    end
  end
end
