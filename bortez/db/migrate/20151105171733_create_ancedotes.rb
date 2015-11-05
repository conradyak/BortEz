class CreateAncedotes < ActiveRecord::Migration
  def change
    create_table :ancedotes do |t|
      t.text :comment

      t.timestamps null: false
    end
  end
end
