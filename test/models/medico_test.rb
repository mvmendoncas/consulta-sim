require "test_helper"

class MedicoTest < ActiveSupport::TestCase
  test 'Criando médico com crm menor que 6 digitos' do
    medico = Medico.new crm: '12345'
    assert medico.saved_change_to_numero_do_crm
  end
  test 'Criando médico com crm de 6 digitos' do
    medico = Medico.new crm: '123456'
    assert medico.saved_change_to_numero_do_crm
  end
  # test "the truth" do
  #   assert true
  # end
end
