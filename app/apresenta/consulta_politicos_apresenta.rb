
class ConsultaPoliticosApresenta
    def initialize; end

    def politicos
        @politicos ||= PoliticosPorGastosConsulta.new.call
    end

    def gastos
        @gastos ||= SomaGastosConsulta.new(politicos).call
    end
end