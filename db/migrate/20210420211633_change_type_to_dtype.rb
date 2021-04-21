class ChangeTypeToDtype < ActiveRecord::Migration[6.1]
  def change
    rename_column :droptypes, :type, :dtype
  end
end
