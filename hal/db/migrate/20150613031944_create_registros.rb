class CreateRegistros < ActiveRecord::Migration
  def change
    create_table :registros do |t|
      t.string :type
      t.string :channel
      t.time :h_inicio
      t.time :h_final
      t.string :location
      t.string :user

      t.timestamps null: false
    end
  end
end
