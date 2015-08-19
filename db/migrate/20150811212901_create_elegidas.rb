class CreateElegidas < ActiveRecord::Migration
  def change
    create_table :elegidas do |t|
      t.integer :pregunta_id
      t.integer :respuesta_id
      t.integer :usuario_id

      t.timestamps
    end
  end
end
