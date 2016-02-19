class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|

        t.string :title
        t.text :content
        t.text :summary

      t.timestamps null: false
    end
  end
end
