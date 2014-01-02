class CreateSectionItems < ActiveRecord::Migration
  def change
    create_table :section_items do |t|
      t.integer :sectionid
      t.integer :orderpos
      t.text :shortdescription
      t.text :longdescription
      t.string :title

      t.timestamps
    end
  end
end
