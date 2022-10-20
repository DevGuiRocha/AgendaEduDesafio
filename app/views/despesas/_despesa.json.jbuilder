json.extract! despesa, :id, :numero_doc, :fornecedor, :created_at, :updated_at
json.url despesa_url(despesa, format: :json)
