class CreatePresences < ActiveRecord::Migration
  def change
    create_table :presences do |t|

      t.timestamps null: false
    end
  end
end
