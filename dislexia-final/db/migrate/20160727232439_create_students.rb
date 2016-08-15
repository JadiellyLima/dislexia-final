class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.date :old
      t.text :note

      t.timestamps null: false
    end
  end
end
