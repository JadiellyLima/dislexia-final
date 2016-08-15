class CreateConctacts < ActiveRecord::Migration
  def change
    create_table :conctacts do |t|
      t.string :name
      t.string :email
      t.text :msg

      t.timestamps null: false
    end
  end
end
