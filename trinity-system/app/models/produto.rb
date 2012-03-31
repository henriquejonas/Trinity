class Produto < ActiveRecord::Base
  belongs_to :auditoria
  belongs_to :unidade
  belongs_to :fornecedor
  belongs_to :categoria
  belongs_to :moeda
  belongs_to :preco
  belongs_to :deposito
end
