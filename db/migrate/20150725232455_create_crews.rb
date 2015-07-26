class CreateCrews < ActiveRecord::Migration
  def change
    create_table :crews do |t|
      t.string :name
      t.references :skater
      t.string :city
      t.string :photo
      t.string :intro_video

      t.timestamps null: false
    end
  end
end
