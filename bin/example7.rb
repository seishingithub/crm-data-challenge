require_relative '../data/crm'
require 'ap'

# print all of the company names

CRM[:companies].each do |company|
  ap company[:name]
end
