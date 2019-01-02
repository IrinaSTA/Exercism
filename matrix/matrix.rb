class Matrix

  attr_reader :rows, :columns

  def initialize(matrix)
    @rows = get_rows(matrix)
    @columns = get_columns(matrix)
  end

  private
# split this up into smaller methods?
  def get_rows(matrix)
    matrix.split("\n").map!{|str_row| str_row.split(" ").map!{|str| str.to_i}}
  end

# this method is hard to follow
  def get_columns(matrix)
    rows = @rows
    columns = []
    for index in rows[0].each_index do
      columns << get_column(index)
    end
    columns
  end

  def get_column(index)
    rows = @rows
    column = []
    for row in rows do
      column << row[index]
    end
    column
  end

end
