class CreateDevprojects < ActiveRecord::Migration[5.2]
  def change
    create_table :devprojects do |t|
      t.string :name
      t.string :language
      t.text :short_description
      t.text :long_description
      t.string :image
      t.string :client
      t.string :url

      t.timestamps
    end
  end
end
