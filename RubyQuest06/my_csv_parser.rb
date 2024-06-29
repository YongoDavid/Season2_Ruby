def my_csv_parser(csv_content, separator)
    rows = csv_content.split("\n") # split the CSV string into rows
    result = []
    
    rows.each do |row|
      columns = row.split(separator) # split the row into columns using the separator
      result << columns
    end
    
    return result
  end