
class ApplicationController < ActionController::Base
    include Pagy::Backend

    rescue_from ActiveRecord::RecordNotFound, with: :not_found

    def not_found
        flash[:error] = "Erro ao localizar #{exception.model} com ID = #{expection.id}"
        redirect_to action: :index
    end
end
