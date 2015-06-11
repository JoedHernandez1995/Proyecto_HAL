class CreateEmisoras < ActiveRecord::Migration
  def change
    create_table :emisoras do |t|
      t.integer :top
      t.string :radio
      t.datetime :fecha
      t.integer :visitas

      t.timestamps null: false
    end
  end
end
