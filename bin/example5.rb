require_relative '../data/crm'

# four ways to get data from a hash:
#   1. direct access:  CRM[:people]
#   2. each
#   3. keys
#   3. values

# two ways get to data in an array
#   1. direct access array[0], array[1]
#   2. each

# print the first name of each person
# underneath, print the company name they work for
# and the title at that company

CRM[:people].each do |person|
  puts person[:first_name]
  person[:employments].each do |employment|
    if employment[:company_id]
      p "  #{employment[:company_id]}"
      CRM[:companies].each do |company|
        if employment[:company_id] == company[:id]
          p "    #{company[:name]}"
          p "      #{employment[:title]}"
        end
      end
    end
  end
end