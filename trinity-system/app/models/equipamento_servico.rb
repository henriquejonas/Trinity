class EquipamentoServico < ActiveRecord::Base
  belongs_to :servico
  belongs_to :produto
end
