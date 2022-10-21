
class PoliticosApresenta
    def initialize(politico_id)
        @politico_id = politico_id
    end

    attr_reader :politico_id

    def gastos_ordenados
        politicos.despesas.order(valor_liquido: :desc)
    end

    def politicos
        @politicos ||= Politico.find(politico_id)
    end
end