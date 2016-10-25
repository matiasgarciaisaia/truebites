class ArgumentViewVersion < ActiveRecord::Base
  belongs_to :argument_view
  belongs_to :previous
end
