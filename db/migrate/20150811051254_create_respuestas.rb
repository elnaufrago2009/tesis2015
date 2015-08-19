class CreateRespuestas < ActiveRecord::Migration
  def change
    create_table :respuestas do |t|
      t.string :nombre
      t.integer :pregunta_id

      t.timestamps
    end
  end
end
