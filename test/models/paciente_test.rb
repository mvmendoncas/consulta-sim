require "test_helper"

class PacienteTest < ActiveSupport::TestCase
  test 'salvar paciente sem cpf' do
    paciente = Paciente.new
    assert_not paciente.save
  end
  test 'salvar paciente com cpf' do
    paciente = Paciente.new cpf: '12345678901'
    assert paciente.save
  end
  # test "the truth" do
  #   assert true
  # end
end
