class CreateJoinTable < ActiveRecord::Migration
  def change
    create_join_table :behaviors, :students do |t|
      # t.index [:behavior_id, :student_id]
      # t.index [:student_id, :behavior_id]
    end
  end
end
