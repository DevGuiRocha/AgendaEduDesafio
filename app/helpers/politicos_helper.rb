
module PoliticosHelper
    def foto_politico(politico) 
        image_tag("http://www.camara.leg.br/internet/deputado/bandep/#{politico.id_cadastro}.jpg",
            style: 'height:auto; width:100px;')
    end
end
