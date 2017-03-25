class ConvertSexIdTypeWorkers < ActiveRecord::Migration
  def up
    change_column :workers, :sex_id, :integer
  end

  def down
    change_column :workers, :sex_id, :string
  end
end
