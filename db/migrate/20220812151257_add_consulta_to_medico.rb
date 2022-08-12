class AddConsultaToMedico < ActiveRecord::Migration[7.0]
  def change
    add_reference :medicos, :consulta, null: false, foreign_key: true
  end
end
