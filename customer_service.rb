require './models/complaint.rb'
require './models/support_specialist.rb'
require './importers/complaints_importer.rb'

ComplaintsImporter.run

puts Complaint.filter_top_priority


puts Complaint.filter_closed_status



# complaint_one = Complaint.new("róka", "piros", Time.now, true)
# puts complaint_one.description
# puts complaint_one 


# support_specialis_one = SupportSpecialist.new("peter", "peter@example.com", "0670", true)
# puts support_specialis_one
