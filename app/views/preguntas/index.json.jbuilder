json.array!(@preguntas) do |pregunta|
  json.extract! pregunta, :id, :nombre
  json.url pregunta_url(pregunta, format: :json)
end
