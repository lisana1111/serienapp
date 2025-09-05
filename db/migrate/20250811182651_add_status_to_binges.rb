class AddStatusToBinges < ActiveRecord::Migration[8.0]
  def change
    add_column :binges, :status, :integer, null: false, default: 0
  end
end