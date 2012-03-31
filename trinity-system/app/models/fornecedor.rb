class Fornecedor < ActiveRecord::Base
  belongs_to :auditoria
  belongs_to :pessoa
end
