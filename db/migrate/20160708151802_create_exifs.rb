class CreateExifs < ActiveRecord::Migration
  def change
    create_table :exifs do |t|
      t.string :camera_model
      t.string :len_model
      t.string :f_number
      t.string :iso
      t.string :shutter_speed_value
      t.string :focal_length
      t.string :gps_version
      t.point :coordinate
      t.text :raw
      t.references :photo, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
