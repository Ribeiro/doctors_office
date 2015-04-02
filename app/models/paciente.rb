class Paciente < ActiveRecord::Base
  has_many :consultas
  has_many :pacientes, :through => :consultas
end
