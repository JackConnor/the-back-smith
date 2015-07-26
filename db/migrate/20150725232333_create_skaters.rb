class CreateSkaters < ActiveRecord::Migration
  def change
    create_table :skaters do |t|
      t.string :name
      t.string :password_digest
      t.string :city
      t.string :photo
      t.string :intro_video
      t.boolean :filmer

      t.timestamps null: false
    end
  end
end
