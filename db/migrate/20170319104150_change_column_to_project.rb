class ChangeColumnToProject < ActiveRecord::Migration
  def up
    change_column :projects, :title, :text, null: false, default: 0
    change_column :projects, :content, :text, null: false, default: 0
    change_column :projects, :price, :integer, null:false, default: 0
  end

  def down
    change_column :projects, :title, :text, null: true, default: 0
    change_column :projects, :content, :text, null: true, default: 0
    change_column :projects, :price, :integer, null: true, default: 0
  end
end
