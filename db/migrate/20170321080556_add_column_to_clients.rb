class AddColumnToClients < ActiveRecord::Migration
  def change
    add_column :clients, :company_name, :string
    add_column :clients, :division, :string
    add_column :clients, :position, :string
    add_column :clients, :family_name, :string
    add_column :clients, :first_name, :string
  end
end
