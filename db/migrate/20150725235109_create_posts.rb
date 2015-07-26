class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :trick
      t.references :skater
      t.string :city
      t.string :spot_name
      t.string :video
      t.string :cover_photo

      t.timestamps null: false
    end
  end
end
