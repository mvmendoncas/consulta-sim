class Endereco < ApplicationRecord
  belongs_to :paciente
  validates :cep, presence: true, length: {is: 8}, numericality: { only_integer: true }
  validates :cidade,  presence: true, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }, exclusion: { in: %w(!@#$%¨&*()_+=[{]};:?/'")}
  validates :bairro, presence: true, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }, exclusion: { in: %w(!@#$%¨&*()_+=[{]};:?/'")}
  validates :logradouro, presence: true, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }, exclusion: { in: %w(!@#$%¨&*()_+=[{]};:?/'")}
  validates :complemento, presence: true, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }, exclusion: { in: %w(!@#$%¨&*()_+=[{]};:?/'")}
end
