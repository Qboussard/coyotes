class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|

        t.string :city
      t.timestamps null: false
    end
  end
end
