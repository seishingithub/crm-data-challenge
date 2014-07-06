require_relative '../data/crm'
require 'pp'

#create an array that contains the first names of every
#person who works for a company called 'Dickens, Blanda and Bosco'

CRM[:companies].each do |company|
  array = []
  if company[:id] == 6
    CRM[:people].each do |person|
      person[:employments].each do |employment|
        if employment[:company_id] == 6
           array << person[:first_name]
        end
      end
    end
    p array
  end
end
