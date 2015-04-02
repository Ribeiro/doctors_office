class CreateConsultas < ActiveRecord::Migration
  def change
    create_table :consultas do |t|
      t.date :data
      t.time :hora
      t.references :medico, index: true
      t.references :paciente, index: true

      t.timestamps
    end
  end
end
