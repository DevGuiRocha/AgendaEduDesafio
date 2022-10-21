
class CsvService
    def initialize(temp_file)
        @temp_file = temp_file
    end

    def call
        create_from_upload
    end

    private

    attr_reader :temp_file

    def data
        @data ||= CSV.parse(File.read(temp_file, encoding: 'bom|utf-8'), col_sep: ';', headers: true)
    end

    def create_from_upload
        filtered_grouped.each do |_cpf, gastos|
            politicos = Politico.find_or_create_by(politico_params(gastos))
            array = gastos_params(politicos, gastos)
            array.each do |element|
                Despesa.find_or_create_by(element)
            end
        end
    end

    def filtered_grouped
        filtered_data = data.select { |row| row['sgUF'] == 'CE' }
        filtered_data.group_by { |h| h['cpf'] }
    end

    def politico_params(gastos)
        { nome: gastos.first['txNomeParlamentar'],
            id_cadastro: gastos.first['ideCadastro'],
            cpf: gastos.first['cpf'],
            sguf: gastos.first['sgUF'],
            sgpartido: gastos.first['sgPartido'] }
    end

    def gastos_params(politicos, gastos)
        gastos.map do |gasto|
            { valor_liquido: gasto['vlrLiquido'],
                numero_doc: gasto['txtNumero'],
                data_emissao: gasto['datEmissao'],
                fornecedor: gasto['txtFornecedor'],
                url_documento: gasto['urlDocumento'],
                politico_id: politicos.id }
        end
    end
end