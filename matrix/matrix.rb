class Matrix

  attr_reader :rows, :columns

  def initialize(matrix)
    @rows = get_rows(matrix)
    @columns = get_columns(matrix)
  end

  private

  def get_rows(matrix)
    matrix.lines.map{|str_row| str_row.split.map!(&:to_i)}
  end

  def get_columns(matrix)
    @rows.transpose
  end

end
