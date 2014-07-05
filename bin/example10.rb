require_relative '../data/crm'
require 'ap'


# print name of every person who doesn't have employment

CRM[:people].each do |person|
  if person[:employments] == []
    ap "#{person[:first_name]} doesn't have a job."
  end
end


