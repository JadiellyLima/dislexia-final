class CreateMemberTeamOffices < ActiveRecord::Migration
  def change
    create_table :member_team_offices do |t|
      t.string :function

      t.timestamps null: false
    end
  end
end
