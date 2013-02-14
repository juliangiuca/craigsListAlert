class UserCriteria < ActiveRecord::Base

	belongs_to :user
	belongs_to :criteria

  # attr_accessible :title, :body
end
