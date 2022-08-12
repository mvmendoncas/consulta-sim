class CreateMedicos < ActiveRecord::Migration[7.0]
  def change
    create_table :medicos do |t|
      t.string :primeiro_nome
      t.string :ultimo_nome
      t.string :cpf
      t.string :email
      t.string :especialidade
      t.string :numero_do_crm

      t.timestamps
    end
  end
end
