class CreateLocationTrainers < ActiveRecord::Migration[5.2]
  def change
    create_table :location_trainers do |t|
      t.integer :trainer_id
      t.integer :location_id

      t.timestamps
    end
  end
end
