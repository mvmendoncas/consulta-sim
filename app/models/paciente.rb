class Paciente < ApplicationRecord
  has_one :endereco
  has_many :consultums, :dependent => :destroy
end
