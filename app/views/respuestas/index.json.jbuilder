json.array!(@respuestas) do |respuesta|
  json.extract! respuesta, :id, :nombre, :pregunta_id
  json.url respuesta_url(respuesta, format: :json)
end
