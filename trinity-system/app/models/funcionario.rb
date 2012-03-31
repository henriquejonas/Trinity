class Funcionario < ActiveRecord::Base
  belongs_to :auditoria
  belongs_to :pessoa
end
