class CreateMemberTeams < ActiveRecord::Migration
  def change
    create_table :member_teams do |t|
      t.string :name
      t.string :phone
      t.references :member_team_office, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
