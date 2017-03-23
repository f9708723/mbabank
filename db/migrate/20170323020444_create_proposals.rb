class CreateProposals < ActiveRecord::Migration
  def change
    create_table :proposals do |t|
      t.text :content
      t.integer :estimate
      t.integer :project_id
      t.integer :worker_id
      t.timestamps
    end
  end
end
