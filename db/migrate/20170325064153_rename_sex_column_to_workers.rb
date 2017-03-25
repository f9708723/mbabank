class RenameSexColumnToWorkers < ActiveRecord::Migration
  def change
    rename_column :workers, :sex, :sex_id
  end
end
