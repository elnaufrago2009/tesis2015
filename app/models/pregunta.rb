class Pregunta < ActiveRecord::Base
	has_many :respuestas, dependent: :destroy
	accepts_nested_attributes_for :respuestas, reject_if: proc { |attributes| attributes['nombre'].blank? }, allow_destroy: true
end
