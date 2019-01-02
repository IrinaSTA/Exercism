class Matrix

  attr_reader :rows, :columns

  def initialize(matrix)
    @rows = get_rows(matrix)
    @columns = get_columns(matrix)
  end

  private

  def get_rows(matrix)
    matrix.split("\n").map!{|str_row| str_row.split(" ").map!{|str| str.to_i}}
  end

  def get_columns(matrix)
    columns = []
    for index in column_indices do
      columns << get_column(index)
    end
    columns
  end

  def get_column(index)
    column = []
    for row in @rows do
      column << row[index]
    end
    column
  end

  def column_indices
    @rows[0].each_index
  end

end
