class ProdutoServico < ActiveRecord::Base
  belongs_to :pedido
  belongs_to :produto
end
