require_relative '../data/crm'
require 'ap'

# print the first name of every person
# underneath each person, print all of their titles (from employments)

CRM[:people].each do |person|
  person[:first_name]
  person[:employments].each do |the_title|
    ap "#{person[:first_name]}'s title is #{the_title[:title]}."
  end
end


