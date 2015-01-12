require_relative("../data/crm.rb")
require 'pp'


result = []

CRM[:companies].each do |company|

  hash = {
    name: company[:name],
    employees: []
  }

  CRM[:people].each do |person|
  end

  result << hash

end
pp result


# Jeff Example/Solution:
#
# employments_by_company = {}
# CRM[:people].each do |person|
#   person[:employments].each do |employment|
#     employments_by_company[employment[:company_id]] ||= []
#     employments_by_company[employment[:company_id]] << {
#       id: person[:id],
#       first_name: person[:first_name],
#       last_name: person[:last_name],
#       title: employment[:title]
#     }
#   end
# end
#
# p employments_by_company
#
# result = []
# CRM[:companies] each do |company|
#   result << {
#     name: company[:name],
#     employments: employments_by_company[company[:id]]
#   }
# end



# NOTES:
# The way to count iterations
# CRM[:companies].each do |c|
#   CRM[:people].each do |person|
#     i += 1
#   end
# end
#
# p i
#
#
# What we want:
# {
#   12 => [
#
#     {title: }
#
#   ]
#
#
# }



# [
#   {
#     name: "Nicolas and Sons",
#     employees: [
#       {
#         :id => 20,
#         :first_name => "Savannah",
#         :last_name => "Clementina",
#         :title => "Chief Communications Consultant"
#       },
#       {
#         :id => 46,
#         :first_name => "Elyse",
#         :last_name => "Jensen",
#         :title => "Human Directives Engineer"
#       },
#     ]
#   }
# ]

# Other solutions:

# pp CRM.class
#
# result = {}
#
# parks.each do |park|
#   value = "#{park[:country]}, #{park[:state]}"
#   result[value] = result[value] || []
#   result[value] << park
# end
# pp result



# crm[:people].each do |person|
#   puts "#{person[:first_name]} #{person[:last_name]}"
#
#   person[:employments].each do |job|
#     puts "  #{job[:title]} at #{crm[:companies][job[:company_id]]}"
#   end
# end
