class Medico < ApplicationRecord
  has_many :consultums, :dependent => :destroy
  validates :email, presence: true, length: {minimum: 11}, uniqueness: true
  validates :cpf, presence: true, numericality: { only_integer: true }, uniqueness: true, length: {is: 11}, exclusion: { in: %w(!@#$%¨&*()_+=[{]};:?/'")}
  validates :primeiro_nome, presence: true, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" },  length: { minimum: 2 }
  validates :ultimo_nome, presence: true, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" },  length: { minimum: 2 }
  validates :numero_do_crm, presence: true, numericality: { only_integer: true }, uniqueness: true, length: {is: 6}, exclusion: { in: %w(!@#$%¨&*()_+=[{]};:?/'")}
  validates :especialidade, presence: true, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }, exclusion: { in: %w(!@#$%¨&*()_+=[{]};:?/'")},  length: { minimum: 2 }
end
