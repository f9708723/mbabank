class AddColumnToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :entry_deadline, :date, after: :price
  end
end
