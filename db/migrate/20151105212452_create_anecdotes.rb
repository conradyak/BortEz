class CreateAnecdotes < ActiveRecord::Migration
  def change
    create_table :anecdotes do |t|
      t.text :comment
      t.integer :user_id
      t.integer :student_id

      t.timestamps null: false
    end
  end
end
