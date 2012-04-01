class Compromisso < ActiveRecord::Base
  belongs_to :auditoria
  belongs_to :funcionario
end
