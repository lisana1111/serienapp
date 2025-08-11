class CreateBinges < ActiveRecord::Migration[8.0]
  def change
    create_table :binges do |t|
      t.integer :user_id
      t.integer :medium_id

      t.timestamps
    end
  end
end
