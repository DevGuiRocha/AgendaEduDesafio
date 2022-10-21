
class SomaGastosConsulta
    def initialize(politicos = Politico.all)
        @politicos = politicos
    end

    attr_reader :politicos

    def call 
        politicos.joins(:despesas).group('politicos.id').sum('despesas.valor_liquido')
    end
end