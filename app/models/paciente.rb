class Paciente < ApplicationRecord
  has_one :endereco
  has_many :consultums, :dependent => :destroy

  validates :primeiro_nome, presence: true, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }, length: { minimum: 2 }
  validates :ultimo_nome, presence: true, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }, length: { minimum: 2 }
  validates :cpf, presence: true, numericality: { only_integer: true }, uniqueness: true, length: { is: 11 }, exclusion: { in: %w(!@#$%¨&*()_+=[{]};:?/'") }
  validates :email, presence: true, length: { minimum: 11 }, uniqueness: true
  validates :data_de_nascimento, presence: true, presence: { message: "Data de nascimento é obrigatória!" }, validates_comparison_of: { less_than: DateTime.now, message: "Data de nascimento inválida" }
end
