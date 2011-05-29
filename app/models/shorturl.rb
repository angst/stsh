class Shorturl < ActiveRecord::Base
  validates_uniqueness_of :url
  validates_presence_of :url
  validates_format_of :url, :with => /^\b((?:https?:\/\/)(?:[^\s()<>]+|\(([^\s()<>]+|(\([^\s()<>]+\)))*\))+(?:\(([^\s()<>]+|(\([^\s()<>]+\)))*\)|[^\s`!()\[\]{};:'".,<>?«»“”‘’]))$/
  
  def shorten
      self.id.alphadecimal
  end
  
  def self.find_by_shortened(shortened)
    find(shortened.alphadecimal)
  end
  
end
