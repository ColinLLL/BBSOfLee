require 'test_helper'

class ConsessionHelperTest < ActionView::TestCase
	test "Session attributes must not be empty" do
		session = Consession.new
		assert session.invalid?
		assert session.errors[:email].any?
		assert session.errors[:password].any?
	end
end
