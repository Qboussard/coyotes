class RenameEventsToEvents < ActiveRecord::Migration
  def change
		rename_table :events, :events
  end
end
