class CreateWinestrains < ActiveRecord::Migration[5.2]
  def change
    create_table :winestrains do |t|
      t.references :wine, foreign_key: true
      t.references :strain, foreign_key: true
      t.float :percentage

      t.timestamps
    end
  end
end
