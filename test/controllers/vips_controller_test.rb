require 'test_helper'

class VipsControllerTest < ActionController::TestCase
  setup do
    @vip = vips(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vips)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vip" do
    assert_difference('Vip.count') do
      post :create, vip: { assistante: @vip.assistante, divers: @vip.divers, domaine: @vip.domaine, email: @vip.email, fonction: @vip.fonction, identifiants: @vip.identifiants, localisation: @vip.localisation, materiel: @vip.materiel, nom: @vip.nom, prenom: @vip.prenom, service: @vip.service, tel_fixe: @vip.tel_fixe, tel_portable: @vip.tel_portable }
    end

    assert_redirected_to vip_path(assigns(:vip))
  end

  test "should show vip" do
    get :show, id: @vip
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vip
    assert_response :success
  end

  test "should update vip" do
    patch :update, id: @vip, vip: { assistante: @vip.assistante, divers: @vip.divers, domaine: @vip.domaine, email: @vip.email, fonction: @vip.fonction, identifiants: @vip.identifiants, localisation: @vip.localisation, materiel: @vip.materiel, nom: @vip.nom, prenom: @vip.prenom, service: @vip.service, tel_fixe: @vip.tel_fixe, tel_portable: @vip.tel_portable }
    assert_redirected_to vip_path(assigns(:vip))
  end

  test "should destroy vip" do
    assert_difference('Vip.count', -1) do
      delete :destroy, id: @vip
    end

    assert_redirected_to vips_path
  end
end
