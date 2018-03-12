class MessageReference < ApplicationRecord
  belongs_to :user
  belongs_to :cluster
  belongs_to :message
end
