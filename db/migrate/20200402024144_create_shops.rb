class CreateShops < ActiveRecord::Migration[5.2]
  def change
    create_table :shops do |t|
      t.string :name
      t.string :englishname
      t.string :address
      t.decimal :evaluation, :precision => 2, :scale => 1
      t.string :mood
      t.string :price
      t.string :power
      t.string :open_time
      t.string :close_time
      t.string :holiday
      t.decimal :latitude, :precision => 9, :scale => 6
      t.decimal :longitude, :precision => 9, :scale => 6
      t.timestamps
    end
  end
end
