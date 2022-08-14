class Endereco < ApplicationRecord
  has_one :paciente

  #validates :cep, presence: true, length: {is: 8}, numericality: { only_integer: true }
  #validates :cidade,  presence: true, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }, exclusion: { in: %w(!@#$%¨&*()_+=[{]};:?/'")},  length: { minimum: 2 }
  #validates :bairro, presence: true, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }, exclusion: { in: %w(!@#$%¨&*()_+=[{]};:?/'")},  length: { minimum: 2 }
  # validates :logradouro, presence: true, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }, exclusion: { in: %w(!@#$%¨&*()_+=[{]};:?/'")},  length: { minimum: 2 }
  # validates :complemento, presence: true, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }, exclusion: { in: %w(!@#$%¨&*()_+=[{]};:?/'")},  length: { minimum: 2 }
end
