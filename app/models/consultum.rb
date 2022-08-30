class Consultum < ApplicationRecord
  belongs_to :paciente
  belongs_to :medico

  validates :data, presence: true, presence: { message: "Informe a data da consulta!" }, comparison: { greater_than_or_equal_to: DateTime.now, message: "Data inválida!" }
  validates :horario, presence: true, presence: { message: "Informe o horário da consulta!" }
end