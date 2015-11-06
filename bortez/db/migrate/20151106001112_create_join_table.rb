class CreateJoinTable < ActiveRecord::Migration
  def change
    create_join_table :students, :behaviors, :anecdote do |t|
      t.integer :student_id
      t.integer :behavior_id
      t.integer :comment_id
    end
  end
end
