class CreateCatalogs < ActiveRecord::Migration
  def change
    create_table :catalogs do |t|
      t.string :name
      t.references :catalog
      t.references :secondary_catalog

      t.timestamps
    end
  end
end
