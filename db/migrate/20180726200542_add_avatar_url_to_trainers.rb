class AddAvatarUrlToTrainers < ActiveRecord::Migration[5.2]
  def change
    add_column :trainers, :avatar_url, :string
  end
end
