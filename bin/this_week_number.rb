require 'date'

# Get the current week number and year
week_number = Date.today.strftime('%U').to_i + 1 # %U gives week number starting from 0

puts week_number
