class AddColumnToWorkers < ActiveRecord::Migration
  def change
    add_column :workers, :family_name, :string
    add_column :workers, :first_name, :string
    add_column :workers, :sex, :string
    add_column :workers, :age, :integer
    add_column :workers, :specialized_industry, :text
    add_column :workers, :specialized_theme, :text
    add_column :workers, :self_introduction, :text
  end
end
