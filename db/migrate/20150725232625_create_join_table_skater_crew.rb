class CreateJoinTableSkaterCrew < ActiveRecord::Migration
  def change
    create_join_table :skaters, :crews do |t|
       t.index [:skater_id, :crew_id]
       t.index [:crew_id, :skater_id]
    end
  end
end
