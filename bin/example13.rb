require_relative '../data/crm'
require 'pp'

# print out the company ids and titles for each person

CRM[:people].each do |person|
  if person[:employments] != []
    puts person[:first_name]
    person[:employments].each do |employment|
      CRM[:companies].each do |company|
        if employment[:company_id] == company[:id]
          pp "..#{employment[:company_id]}"
          pp "....#{employment[:title]}"
          pp "==================================="
        end
      end
    end
  end
end

