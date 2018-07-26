class AddColumnTrainerIdToClients < ActiveRecord::Migration[5.2]
  def change
    add_column :clients, :trainer_id, :integer
  end
end
