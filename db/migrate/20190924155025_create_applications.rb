class CreateApplications < ActiveRecord::Migration[5.2]
  def change
    create_table :applications do |t|
      t.string :title
      t.text :description
      t.string :address
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
