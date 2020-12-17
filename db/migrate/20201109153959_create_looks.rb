class CreateLooks < ActiveRecord::Migration[5.2]
  def change
    create_table :looks do |t|
      t.string :title
      t.text :note
      t.date :date

      t.timestamps
    end
  end
end
