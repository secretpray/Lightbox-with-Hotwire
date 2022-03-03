require "test_helper"

class AttachmentsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get attachments_index_url
    assert_response :success
  end
end
