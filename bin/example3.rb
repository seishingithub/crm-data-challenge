require_relative '../data/crm'

# four ways to get data from a hash:
#   1. direct access:  CRM[:people]
#   2. each
#   3. keys
#   3. values

# two ways get to data in an array
#   1. direct access array[0], array[1]
#   2. each

# print the first name of every person
# underneath each person, print all of their titles (from employments)

CRM[:people].each do |person|
  p person[:first_name]
  person[:employments].each do |employment|
    p "  #{employment[:title]}"
  end
  puts
end