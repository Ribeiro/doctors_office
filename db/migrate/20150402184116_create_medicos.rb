class CreateMedicos < ActiveRecord::Migration
  def change
    create_table :medicos do |t|
      t.string :nome
      t.integer :crm
      t.string :fone
      t.string :email

      t.timestamps
    end
  end
end
