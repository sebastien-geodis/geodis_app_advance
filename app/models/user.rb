class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  belongs_to :intervention
  belongs_to :vip,foreign_key: "vip_id"
  has_one :monitoring
  belongs_to :user_status
end
