class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|

        t.belongs_to :tournaments, index: true
      t.timestamps null: false
    end
  end
end
