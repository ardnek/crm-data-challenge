require_relative("../data/crm.rb")
require 'pp'

result = []

CRM[:companies].each do |company|
  puts company
end


# David solution:
# result = []
# input[:companies].each do |company|
#   input[:people].each do |person|
#     person[:employments]. each do |employment|
#       result << {
#         :company_id => employment[:company_id],
#         :person_id => person[:id],
#         :title => employment[:title],
#         :person_first_name => person[:first_name]
#       }
#     end
#   end
# end
# result


# [
#   {
#     :company_id => 4,
#     :company_name => "Nicolas and Sons",
#     :person_id => 20,
#     :person_first_name => "Savannah",
#     :person_last_name => "Clementina",
#     :title => "Chief Communications Consultant"
#   },
#   {
#     :company_id => 6,
#     :company_name => "Mueller LLC",
#     :person_id => 20,
#     :person_first_name => "Elyse",
#     :person_last_name => "Jensen",
#     :title => "Human Directives Engineer"
#   },
# ]
