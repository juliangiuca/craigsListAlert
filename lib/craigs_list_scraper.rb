  require 'open-uri'
  require 'nokogiri'

class CraigsListScraper

  def initialize(url)
    @data = Nokogiri::HTML(open(url))
  end
  
  def get_data
	  items = @data.css('.row') #using for now because I need to figure out how to get text from href

	  items.each do |item|
      link = item.search('a').first #first a href, second is category/tag
      url = link.attributes['href'].value 
      title = link.children.first.text #"children" is XML sytax. The title is a child of the href parent.
      
      price = item.at_css('.itempp').text
      price.delete! " $" #price

      location = item.at_css('.itempn').text #location
      location.delete!("()").strip! unless location.empty?

      add_data(url, title, price, location)
    end
  end


  def add_data(url, title, price, location)
    item = Item.new(:url => url, :title => title, :price => price, :location => location)
    item.save
  end


end




url = "http://sfbay.craigslist.org/search/sss/sfc?zoomToPosting=&altView=&query=bike&srchType=A&minAsk=&maxAsk="
test = CraigsListScraper.new(url)
test.get_data



