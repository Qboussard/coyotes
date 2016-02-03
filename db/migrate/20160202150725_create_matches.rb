class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|

        t.belongs_to :tournaments, index: true
        t.string :teams_1, index: true
        t.string :teams_2, index: true
        t.string :score
      t.timestamps null: false
    end
  end
end
