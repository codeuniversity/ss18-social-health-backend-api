class User < ActiveRecord::Base
# has_many :transactions
# has_many :items
# has_many :articles
# has_many :categories
belongs_to :cluster

# Include default devise modules.
devise :database_authenticatable, :trackable, :omniauthable
include DeviseTokenAuth::Concerns::User

end
