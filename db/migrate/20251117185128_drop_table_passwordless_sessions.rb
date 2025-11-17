class DropTablePasswordlessSessions < ActiveRecord::Migration[8.0]
  def change
    drop_table(:passwordless_sessions)
  end

end
