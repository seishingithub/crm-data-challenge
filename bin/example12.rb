require_relative '../data/crm'
require 'ap'

# for each person, print their keys and values individually

CRM[:people].each do |person|
  ap "Keys and values for #{person[:first_name].upcase} #{person[:last_name].upcase}:"
  person.each do |key, value|
    ap "KEY: #{key}, VALUE: #{value}"
  end
  ap "--------------------------------------------------------"
end