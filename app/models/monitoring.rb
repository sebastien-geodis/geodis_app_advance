class Monitoring < ActiveRecord::Base
  belongs_to :monitoring_status
  belongs_to :vip
  belongs_to :user
end
