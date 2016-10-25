class StatementVote < ActiveRecord::Base
  belongs_to :statement
  belongs_to :user
end
