
class PoliticosPorGastosConsulta
    def initialize(politicos = Politico.all)
        @politicos = politicos
    end

    attr_reader :politicos

    def call
        politicos.joins(:despesas).group('politicos.id').order('sum(despesas.valor_liquido) desc')
    end
end