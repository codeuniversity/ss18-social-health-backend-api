class Message < ActiveRecord::Base
  after_save :add_message_to_user_and_cluster

  has_one :message_reference
  has_one :user, through: :message_reference
  has_one :cluster, through: :message_reference

end
