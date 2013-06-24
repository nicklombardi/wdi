def divide(x, y)
  begin
    return x / y
  rescue ZeroDivisionError
    puts "you divided by zero, no crash though"
    y = y + 1
    retry
  ensure
    puts "this must be run, no matter what"
  end
end

def process_spreadsheet(s)
  begin
    open_my_spreadsheet()
    load_all_cells()
    some_something_to_data()
  rescue
    puts "spreadsheet error"
  ensure
    save_spreadsheet()
  end
end

divide(10, 0)

# custom error handling
# d = gets.to_i
# if d == 0
#   raise "badDenominator"
# else
# end