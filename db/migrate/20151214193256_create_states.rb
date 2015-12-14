class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t|
      t.string :board_state
      t.references :board
      t.timestamps null: false
    end
  end
end
