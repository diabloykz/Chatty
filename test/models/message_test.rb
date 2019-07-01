require 'test_helper'

class MessageTest < ActiveSupport::TestCase
  def setup
    @user = User.create(username: "tpoirine", password: "password")
    @message = Message.new(body: "This is the body of the message", user_id: @user.id)
  end

  test "user should be valid" do
    assert @user.valid?
  end

  test "message should be valid and references a user" do
    assert @message.valid?
  end

  test "message should be present" do
    @message.body = " "
    assert_not @message.valid?
  end
end
