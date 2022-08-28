require "test_helper"

class MedicoTest < ActiveSupport::TestCase
  test 'salvar médico sem crm' do
    medico = Medico.new
    assert_not medico.save
  end
  test 'salvar médico com crm' do
    medico = Medico.new crm: '123456'
    assert medico.save
  end
  # test "the truth" do
  #   assert true
  # end
end
