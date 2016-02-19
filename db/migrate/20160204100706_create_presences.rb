class CreatePresences < ActiveRecord::Migration
  def change
    create_table :presences do |t|

        t.belongs_to :tournaments, index: true
        t.string :name, index: true
      t.timestamps null: false
    end
  end
end
