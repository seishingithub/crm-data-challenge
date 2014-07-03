require_relative '../data/crm'

# four ways to get data from a hash:
#   1. direct access:  CRM[:people]
#   2. each
#   3. keys
#   3. values

# two ways get to data in an array
#   1. direct access array[0], array[1]
#   2. each

# print the name of the company that has an id of 4

CRM[:companies].each do |company|
  if company[:id] == 4
    p company[:name]
  end
end