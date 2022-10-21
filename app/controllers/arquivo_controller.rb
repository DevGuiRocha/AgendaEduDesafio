
class ArquivoController < ApplicationController
    def create
        if csv_file
            CsvService.new(csv_file).call
            flash[:notice] = 'Sucesso ao carregar arquivo! Políticos Atualizados!'
            redirect_to :politicos
        else
            flash[:alert] = 'Não foi possível carregar o arquivo. Tente novamente!'
            redirect_to action: :create
        end
    end

    private

    def csv_file
        @csv_file ||= params[:csv].tempfile.path if params[:csv] && params[:csv].content_type == 'text/csv'
    end
end