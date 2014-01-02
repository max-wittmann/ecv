class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.string :title
      t.integer :orderpos
      t.string :name
      t.text :text

      t.timestamps
    end

    add_index :sections, :id, unique: true
  end
end
