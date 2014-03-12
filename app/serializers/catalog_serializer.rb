class CatalogSerializer < ActiveModel::Serializer
  embed :ids, :include => true

  attributes :id, :name

  has_many :catalogs, :root => :catalogs
  has_many :secondary_catalogs, :root => :catalogs
end