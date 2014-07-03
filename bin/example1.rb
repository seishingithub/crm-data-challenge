require_relative '../data/crm'

# four ways to get data from a hash:
#   1. direct access:  CRM[:people]
#   2. each
#   3. keys
#   3. values

# two ways get to data in an array
#   1. direct access array[0], array[1]
#   2. each

# :people is a symbol
# CRM[:people] # =>
#   go through the CRM hash
#   when you find a key called :people
#   return that value

# print all first names of people

CRM[:people].each do |row|
  p row[:first_name]
end
