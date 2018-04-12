class Message < ActiveRecord::Base
  has_one :message_reference
  has_one :user, through: :message_reference
  has_one :cluster, through: :message_reference

end
