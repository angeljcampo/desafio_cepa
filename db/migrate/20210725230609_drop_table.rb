class DropTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :wine_strains
  end
end
