json.array!(@elegidas) do |elegida|
  json.extract! elegida, :id, :pregunta_id, :respuesta_id, :usuario_id
  json.url elegida_url(elegida, format: :json)
end
