class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.text :title
      t.text :content
      t.integer :price
      t.date :start_day
      t.date :end_day
      t.timestamps
    end
  end
end
