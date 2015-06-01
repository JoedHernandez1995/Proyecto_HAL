class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :nombre
      t.integer :edad
      t.string :profesion
      t.string :pais
      t.string :correo
      t.belongs_to :user

      t.timestamps null: false
    end
    add_foreign_key :profiles, :users
  end
end
