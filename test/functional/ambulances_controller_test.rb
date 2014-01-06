require 'test_helper'

class AmbulancesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Ambulance.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Ambulance.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Ambulance.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to ambulance_url(assigns(:ambulance))
  end

  def test_edit
    get :edit, :id => Ambulance.first
    assert_template 'edit'
  end

  def test_update_invalid
    Ambulance.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Ambulance.first
    assert_template 'edit'
  end

  def test_update_valid
    Ambulance.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Ambulance.first
    assert_redirected_to ambulance_url(assigns(:ambulance))
  end

  def test_destroy
    ambulance = Ambulance.first
    delete :destroy, :id => ambulance
    assert_redirected_to ambulances_url
    assert !Ambulance.exists?(ambulance.id)
  end
end
