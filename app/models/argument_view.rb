class ArgumentView < ActiveRecord::Base
  belongs_to :argument
  belongs_to :user
  has_many :versions, -> { order('created_at asc') }, class_name: 'ArgumentViewVersion'
  validates_presence_of :versions

  def last_version
    versions.last
  end
end
