# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

c1 = Catalog.create :name => '1'
c2 = Catalog.create :name => '2', :catalog => c1
c3 = Catalog.create :name => '3', :catalog => c1
c4 = Catalog.create :name => '4', :secondary_catalog => c2

# pp ActiveModel::ArraySerializer.new(Catalog.where(:catalog_id => nil, :secondary_catalog_id => nil), :root => :catalogs).as_json; 0