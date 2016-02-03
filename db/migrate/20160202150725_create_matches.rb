class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|

        t.belongs_to :tournaments, index: true
        t.belongs_to :teams, index: true
        t.belongs_to :teams, :teams2, index: true
        t.string :score
      t.timestamps null: false
    end
  end
end
