# frozen_string_literal: true

require 'test_helper'

class MersenneControllerTest < ActionDispatch::IntegrationTest
  test 'should get form' do
    get mersenne_form_url
    assert_response :success
  end

  test 'should get result' do
    get mersenne_result_url
    assert_response :success
  end
end
