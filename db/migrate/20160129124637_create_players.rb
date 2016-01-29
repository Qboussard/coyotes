class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
        t.string :lastname
        t.string :firstname
        t.string :number
        t.string :place
        t.string :staff
        t.boolean :adult, default: true

      t.timestamps null: false
    end
  end
end
