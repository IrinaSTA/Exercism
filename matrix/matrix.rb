class Matrix

  attr_reader :rows, :columns

  def initialize(matrix)
    @rows = get_rows(matrix)
    @columns = get_columns(matrix)
  end

  private

  def get_rows(matrix)
    matrix.lines("\n").map!{|str_row| str_row.split.map!{|str| str.to_i}}
  end

  def get_columns(matrix)
    @rows.transpose
  end

end
