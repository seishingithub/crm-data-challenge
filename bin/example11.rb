require_relative '../data/crm'
require 'ap'


# print the name and title for employee with id 3

# CRM[:people][2][:first_name]
# CRM[:people][2][:employments][0][:title]
# ap "#{CRM[:people][2][:first_name]}'s title is #{CRM[:people][2][:employments][0][:title]}."
#

CRM[:people].each do |person|
  if person[:id] == 3
    ap "#{person[:first_name]}'s work id is #{person[:id]}. #{person[:first_name]}'s title at work is #{person[:employments][0][:title]}."
  end
end