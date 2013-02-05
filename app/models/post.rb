class Post < ActiveRecord::Base
  attr_accessible :bodytext, :ip, :title

  validates :bodytext, :ip, :title, :presence => true
  validates :title, :length => { :maximum => 30}
  validates :bodytext, :length => { :maximum => 500 }
end
