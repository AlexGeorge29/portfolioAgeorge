class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :writter
      t.string :content

      t.references :project, polymorphic: true, index: true

      t.timestamps
    end
  end
end
