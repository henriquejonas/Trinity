class AgredadoTransportadora < ActiveRecord::Base
  belongs_to :auditoria
  belongs_to :transportador
end
