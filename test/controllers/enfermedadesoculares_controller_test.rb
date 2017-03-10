require 'test_helper'

class EnfermedadesocularesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @enfermedadesoculare = enfermedadesoculares(:one)
  end

  test "should get index" do
    get enfermedadesoculares_url
    assert_response :success
  end

  test "should get new" do
    get new_enfermedadesoculare_url
    assert_response :success
  end

  test "should create enfermedadesoculare" do
    assert_difference('Enfermedadesoculare.count') do
      post enfermedadesoculares_url, params: { enfermedadesoculare: { nombre: @enfermedadesoculare.nombre } }
    end

    assert_redirected_to enfermedadesoculare_url(Enfermedadesoculare.last)
  end

  test "should show enfermedadesoculare" do
    get enfermedadesoculare_url(@enfermedadesoculare)
    assert_response :success
  end

  test "should get edit" do
    get edit_enfermedadesoculare_url(@enfermedadesoculare)
    assert_response :success
  end

  test "should update enfermedadesoculare" do
    patch enfermedadesoculare_url(@enfermedadesoculare), params: { enfermedadesoculare: { nombre: @enfermedadesoculare.nombre } }
    assert_redirected_to enfermedadesoculare_url(@enfermedadesoculare)
  end

  test "should destroy enfermedadesoculare" do
    assert_difference('Enfermedadesoculare.count', -1) do
      delete enfermedadesoculare_url(@enfermedadesoculare)
    end

    assert_redirected_to enfermedadesoculares_url
  end
end
