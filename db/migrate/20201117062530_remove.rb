class Remove < ActiveRecord::Migration[5.2]
  def change
    remove_column :looks, :user_id

  end
end
