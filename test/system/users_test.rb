# frozen_string_literal: true

require 'application_system_test_case'

class UsersTest < ApplicationSystemTestCase
  setup do
    @user = users(:one)
    name = 'John'
  end

  test 'visiting the index' do
    visit users_url
    assert_selector 'h1', text: 'Users'
  end

  test 'should create user' do
    visit users_url
    click_on 'New user'

    fill_in 'Name:', with: name
    fill_in 'Password:', with: 'secret'
    fill_in 'Confirm Password:', with: 'secret'
    click_on 'Create User'

    assert_text "User #{name} was successfully created"
  end

  test 'should update User' do
    visit user_url(@user)
    click_on 'Edit this user', match: :first

    fill_in 'Name:', with: name
    fill_in 'Password:', with: 'secret'
    fill_in 'Confirm Password:', with: 'secret'
    click_on 'Update User'

    assert_text "User #{name} was successfully updated"
  end

  test 'should destroy User' do
    visit user_url(@user)
    click_on 'Destroy this user', match: :first

    assert_text 'User was successfully destroyed'
  end
end