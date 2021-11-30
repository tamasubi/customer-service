require './models/complaint.rb'
require './models/support_specialist.rb'

require './db/complaints.rb'
require './external_data/external_complaint_source.rb'

EXTERNAL_COMPLAINTS.each do |external_complaint|
    complaint = Complaint.new(
        external_complaint[:title], 
        external_complaint[:description], 
        external_complaint[:timestamp], 
        external_complaint[:top_priority]
    )
    
    COMPLAINTS.push(complaint)
end 

puts COMPLAINTS







# complaint_one = Complaint.new("róka", "piros", Time.now, true)
# puts complaint_one.description
# puts complaint_one 


# support_specialis_one = SupportSpecialist.new("peter", "peter@example.com", "0670", true)
# puts support_specialis_one
