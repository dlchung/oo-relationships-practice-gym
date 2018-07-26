class RenameColumnNameClients < ActiveRecord::Migration[5.2]
  def change
    rename_column :clients, :name, :first_name
  end
end
