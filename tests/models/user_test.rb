require 'test_helper'

class UserTest < ActiveSupport::TestCase
  include ActiveModel::Lint::Tests

  setup do
    @model = User.new
    puts "Test"
  end
end
