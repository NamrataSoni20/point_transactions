require "test_helper"

class Api::V1::TransactionsControllerTest < ActionDispatch::IntegrationTest
  test "should get bulk" do
    get api_v1_transactions_bulk_url
    assert_response :success
  end

  test "should get single" do
    get api_v1_transactions_single_url
    assert_response :success
  end
end
