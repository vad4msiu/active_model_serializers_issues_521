class Catalog < ActiveRecord::Base
  has_many :catalogs
  has_many :secondary_catalogs, :class_name => 'Catalog', :foreign_key => :secondary_catalog_id

  belongs_to :catalog
  belongs_to :secondary_catalog, :class_name => 'Catalog'
end
