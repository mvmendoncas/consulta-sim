require "test_helper"

class ConsultumTest < ActiveSupport::TestCase
  test 'Criando uma consulta'  do
    get '/consulta/new'
    assert_response :success
    post '/consulta', params: {consulta: {medico: 'roberto', paciente: 'maria', data: '2022-08-12', horario: '2022-08-12 11:41:10'}}
    assert_select 'Medico:\n roberto'
  end
  test 'Criando uma consulta sem informa data' do
    consulta = Consulta.new
    assert_not consulta.save
  end
  # test "the truth" do
  #   assert true
  # end
end
