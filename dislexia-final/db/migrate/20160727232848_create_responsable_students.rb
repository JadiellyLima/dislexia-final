class CreateResponsableStudents < ActiveRecord::Migration
  def change
    create_table :responsable_students do |t|
      t.string :name
      t.string :phone
      t.references :student, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
