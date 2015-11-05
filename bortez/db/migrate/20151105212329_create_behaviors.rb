class CreateBehaviors < ActiveRecord::Migration
  def change
    create_table :behaviors do |t|
      t.string :name
      t.interger :behavior_id

      t.timestamps null: false
    end
  end
end
