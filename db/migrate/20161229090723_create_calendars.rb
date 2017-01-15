class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|

			t.date :date
			t.text :event
      t.timestamps null: false
    end
  end
end
