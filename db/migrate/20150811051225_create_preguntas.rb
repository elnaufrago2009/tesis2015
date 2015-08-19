class CreatePreguntas < ActiveRecord::Migration
  def change
    create_table :preguntas do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
