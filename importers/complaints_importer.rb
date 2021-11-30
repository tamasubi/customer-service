require './external_data/external_complaint_source.rb'
require './models/complaint.rb'

require './db/complaints.rb'

class ComplaintsImporter
    def self.run
        EXTERNAL_COMPLAINTS_DB.each do |external_complaint|
           complaint = Complaint.new(
                external_complaint[:title], 
                external_complaint[:description], 
                external_complaint[:timestamp], 
                external_complaint[:top_priority]
            ) 
            COMPLAINTS_DB.push(complaint)
        end
    end 
end
