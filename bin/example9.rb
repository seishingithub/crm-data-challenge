require_relative '../data/crm'
require 'ap'

# print the name of the company that has an id of 4

# CRM[:companies][4][:name]
ap "The name of the company with an id of 4 is #{CRM[:companies][4][:name]}."