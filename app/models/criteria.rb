class Criteria < ActiveRecord::Base

	has_many :user_criterias, :dependent => :destroy  # has many through relationship, must define within the models
	has_many :users, :through => :user_criterias
	has_many :items


  attr_accessible :url, :title

  
 
end
