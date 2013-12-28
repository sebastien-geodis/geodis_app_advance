class Vip < ActiveRecord::Base
  belongs_to :user
  belongs_to :monitoring
  belongs_to :intervention
end
