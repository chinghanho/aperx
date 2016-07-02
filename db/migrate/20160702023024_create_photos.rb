class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :path
      t.integer :photoable_id
      t.string :photoable_type

      t.timestamps null: false
    end
  end
end
