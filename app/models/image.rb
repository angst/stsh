class Image < ActiveRecord::Base

  def short_url
    "http://stsh.me/#{Shorturl.find_or_create_by_url(self.url).shorten}"
  end
end
