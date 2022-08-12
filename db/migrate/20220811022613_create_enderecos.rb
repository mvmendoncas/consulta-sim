class CreateEnderecos < ActiveRecord::Migration[7.0]
  def change
    create_table :enderecos do |t|
      t.references :paciente, index: { unique: true }, foreign_key: true
      t.string :cep
      t.string :cidade
      t.string :bairro
      t.string :logradouro
      t.text :complemento

      t.timestamps
    end
  end
end
