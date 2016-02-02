class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|

        t.belongs_to :matches, index: true
        t.belongs_to :teams, index: true
        t.belongs_to :teams, :team2, index: true
        t.string :score
      t.timestamps null: false
    end
  end
end
