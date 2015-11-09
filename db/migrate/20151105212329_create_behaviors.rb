class CreateBehaviors < ActiveRecord::Migration
  def change
    create_table :behaviors do |t|
      t.string :name
      

      t.timestamps null: false
    end
  end
end
