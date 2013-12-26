require 'test_helper'

class UsersHelperTest < ActionView::TestCase
	test "user attributes must not be empty" do
		user = User.new
		assert user.invalid?
		assert user.errors[:username].any?
		assert user.errors[:email].any?
		assert user.errors[:password].any?
	end
end
