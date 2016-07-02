class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :path
      t.integer :photoable_id
      t.string :photoable_type
      t.datetime :taken_at

      t.timestamps null: false
    end
  end
end
