class Argument < ActiveRecord::Base
  has_many :argument_views
  validates_presence_of :argument_views
end
