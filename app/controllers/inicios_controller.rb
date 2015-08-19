class IniciosController < ApplicationController
  skip_before_filter :verify_authenticity_token  
  def index
  	@usuarios = Usuario.all
  	@preguntas = Pregunta.all
  end

  def enviado_ok
  	 @usuario = Usuario.new(:nombre => params[:nombre], :experiencia => params[:experiencia] )
  	 @usuario.save
  	 @usuario_last = Usuario.last

  	 params[:elegidas].each do |elegida|
  	 	@elegida = Elegida.new(:pregunta_id => elegida[0], :respuesta_id => elegida[1], :usuario_id => @usuario_last.id)
  	 	@elegida.save
  	 end
  end

end
