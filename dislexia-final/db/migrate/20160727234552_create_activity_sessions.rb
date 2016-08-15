class CreateActivitySessions < ActiveRecord::Migration
  def change
    create_table :activity_sessions do |t|
      t.references :session, index: true, foreign_key: true
      t.references :activity, index: true, foreign_key: true
      t.references :member_team, index: true, foreign_key: true
      t.references :student, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
