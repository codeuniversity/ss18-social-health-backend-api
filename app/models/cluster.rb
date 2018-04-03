class Cluster < ActiveRecord::Base
  belongs_to :rank
  has_many :users
  # has_many :users
  # attribute_method_prefix 'reset_'
  # attribute_method_suffix '_highest?'
  # define_attribute_methods :users

  # attribute_method_prefix 'reset_'
  # attribute_method_suffix '_puts'
  # define_attribute_methods :Cluster

  # attr_accessor :Cluster, array: true, default: []

  @users = ["2132", "2323"]
  # @test_users = @users

  def checkForTimeDifference
    puts "so ein test"
    puts @users
    puts "hallo"
  end

    # def attribute_highest?(attribute)
    #   send(attribute) > 100
    # end
end
