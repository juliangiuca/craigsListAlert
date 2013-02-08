class Item < ActiveRecord::Base
  attr_accessible :url, :item, :location, :price, :title
end
