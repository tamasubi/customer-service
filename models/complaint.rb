class Complaint
    attr_accessor :title, :description, :timestamp, :top_priority
    
    def initialize(title, description, timestamp, top_priority)
        @title = title
        @description = description
        @timestamp = timestamp
        @top_priority = top_priority
    end


    def to_s
        "complaint: #{@title}"
    end
end



# complaint_one = Complaint.new("róka", "piros", Time.now, true)
# puts complaint_one.description
# puts complaint_one 


