require 'test_helper'
require 'json'
require 'byebug'
require './app/models/user.rb'

class User
  private def get_response
    file = File.join(Rails.root, 'app', 'models', 'user.json')
    hash = JSON.parse(File.read(file))
  end
end

class UserTest < ActiveSupport::TestCase
  test "user has join date" do
    me = User.new("mamallama")
    assert_equal "2015-01-22T19:59:24Z", me.joined_on
  end

  test "user has followers" do
    me = User.new("mamallama")
    assert_equal "5", me.followers
  end
end
