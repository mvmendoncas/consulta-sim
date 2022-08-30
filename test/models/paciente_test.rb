require "test_helper"

class PacienteTest < ActiveSupport::TestCase
  test'criando paciente sem o primeiro nome' do
    paciente = Paciente.new
    assert_not paciente.save
  end
  test 'Criando paciente com o primeiro nome' do
    paciente = Paciente.new primeiro_nome: 'maria'
    assert paciente.save
  end
  # test "the truth" do
  #   assert true
  # end
end
