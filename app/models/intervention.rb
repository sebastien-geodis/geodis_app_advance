class Intervention < ActiveRecord::Base
  belongs_to :user
  belongs_to :vip
  belongs_to :intervention_status
end
