require_relative '../data/crm'
require 'ap'

# PRINT ALL THE FIRST NAMES OF PEOPLE

CRM[:people].each do |person|
  ap person[:first_name]
end



