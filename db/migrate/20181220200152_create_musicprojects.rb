class CreateMusicprojects < ActiveRecord::Migration[5.2]
  def change
    create_table :musicprojects do |t|
      t.string :name
      t.string :software
      t.string :vst
      t.integer :time
      t.string :style
      t.text :short_descrption
      t.text :long_description
      t.string :image
      t.string :url

      t.timestamps
    end
  end
end
