require File.expand_path('../../config/environment', __FILE__) #script is not aware it's in rails, load the rails environment


criterias = Criteria.all
criterias.each do |criteria|
	cls = CraigsListScraper.new(criteria)
	cls.get_data
end


