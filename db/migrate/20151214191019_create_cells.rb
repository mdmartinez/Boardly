class CreateCells < ActiveRecord::Migration
  def change
    create_table :cells do |t|
      t.references :board
      t.integer :row_position
      t.integer :column_position
      t.string :cell_type
      t.timestamps null: false
    end
  end
end
