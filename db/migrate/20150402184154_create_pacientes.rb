class CreatePacientes < ActiveRecord::Migration
  def change
    create_table :pacientes do |t|
      t.string :nome
      t.integer :idade
      t.string :fone
      t.string :email

      t.timestamps
    end
  end
end
