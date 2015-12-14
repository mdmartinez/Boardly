class Board < ActiveRecord::Base
  has_many :cells

  CELL_TYPES = [:point, :bomb, nil]

  def seed
  	for row in 0..5 do
  	  for column in 0..5 do
  	  	cell_type = CELL_TYPES.sample
  	  	if cell_type != nil
	      self.cells.create!(row_position:row,column_position:column,cell_type:cell_type)
	    end
      end
    end
  end

  def get_cells
  	[['·', '_', '_', 'x', '·'],
  	['·', '_', '_', 'x', '·'],
  	['·', '_', '☺', 'x', '·'],
  	['·', '_', '_', 'x', '·'],
  	['·', '_', '_', 'x', '·'],
  	['·', '_', '_', 'x', '·']]
  end
end
