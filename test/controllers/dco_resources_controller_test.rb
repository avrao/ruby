require 'test_helper'

class DcoResourcesControllerTest < ActionController::TestCase
  setup do
    @dco_resource = dco_resources(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dco_resources)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dco_resource" do
    assert_difference('DcoResource.count') do
      post :create, dco_resource: { added_by: @dco_resource.added_by, added_on: @dco_resource.added_on, outdated: @dco_resource.outdated, owned_by: @dco_resource.owned_by, purpose: @dco_resource.purpose, title: @dco_resource.title, title_link: @dco_resource.title_link }
    end

    assert_redirected_to dco_resource_path(assigns(:dco_resource))
  end

  test "should show dco_resource" do
    get :show, id: @dco_resource
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dco_resource
    assert_response :success
  end

  test "should update dco_resource" do
    patch :update, id: @dco_resource, dco_resource: { added_by: @dco_resource.added_by, added_on: @dco_resource.added_on, outdated: @dco_resource.outdated, owned_by: @dco_resource.owned_by, purpose: @dco_resource.purpose, title: @dco_resource.title, title_link: @dco_resource.title_link }
    assert_redirected_to dco_resource_path(assigns(:dco_resource))
  end

  test "should destroy dco_resource" do
    assert_difference('DcoResource.count', -1) do
      delete :destroy, id: @dco_resource
    end

    assert_redirected_to dco_resources_path
  end
end
