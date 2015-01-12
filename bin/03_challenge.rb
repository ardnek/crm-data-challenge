require_relative("../data/crm.rb")
require 'pp'

result = []
CRM[:people].each do |person|
  if person[:employments].empty?
    result << person
  end
end
result

pp result



# [
#   {
#     :id => 20,
#     :first_name => "Savannah",
#     :last_name => "Clementina"
#   },
#   {
#     :id => 32,
#     :first_name => "Elyse",
#     :last_name => "Jensen",
#   }
# ]
#
#





# --------------
#
# if person[:employments].empty?
# pp x
# pp y
# pp person[:first_name]
# pp person[:last_name]
# end
# end



# Result above is the same as this:
# people_without_employments = CRM[:people].select{|person| person[:employments].empty? }
# people.map do |person|
#   {
#     id: person[:id]
#     first_name: person[:first_name]
#   }
# end
