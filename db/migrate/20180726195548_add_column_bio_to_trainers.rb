class AddColumnBioToTrainers < ActiveRecord::Migration[5.2]
  def change
    add_column :trainers, :bio, :text
  end
end
