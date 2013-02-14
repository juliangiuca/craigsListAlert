class Item < ActiveRecord::Base
  attr_accessible :url, :item, :location, :price, :title, :criteria_id

  	belongs_to :criteria

end
