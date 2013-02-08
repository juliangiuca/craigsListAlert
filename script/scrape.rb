require File.expand_path('../../config/environment', __FILE__) #script is not aware it's in rails, load the rails environment


url = "http://sfbay.craigslist.org/search/sss/sfc?zoomToPosting=&altView=&query=bike&srchType=A&minAsk=&maxAsk="
test = CraigsListScraper.new(url)
test.get_data
