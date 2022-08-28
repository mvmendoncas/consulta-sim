require "test_helper"


class ConsultumTest < ActiveSupport::TestCase

  test 'salvar consulta sem data' do
    consulta = Consultum.new
    assert_not consulta.save
  end

  test 'salvar consutla com data' do
    consulta = Consultum.new '01/09/2022'
    assert consulta.save
  end

  # test "the truth" do
  #   assert true
  # end
end
