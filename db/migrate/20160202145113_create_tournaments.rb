class CreateTournaments < ActiveRecord::Migration
  def change
    create_table :tournaments do |t|

        t.string :place
        t.date :date
        t.text :link_picture

      t.timestamps null: false
    end
  end
end
