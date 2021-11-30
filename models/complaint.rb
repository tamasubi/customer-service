require_relative '../db/complaints.rb'

class Complaint
    attr_accessor :title, :description, :top_priority
    attr_reader :timestamp, :status

    STATUSES = [:open, :in_progress, :closed].freeze
    
    def initialize(title, description, timestamp, top_priority)
        @title = title
        @description = description
        @timestamp = timestamp
        @top_priority = top_priority
    end
    
    def status_to_in_progress
        @status = :in_progress
    end

    def status_to_closed
        @status = :closed
    end

    def status=(status)
        raise 'Invalid status' unless STATUSES.include?(status)

        @status = status
    end

    def self.filter_top_priority
        COMPLAINTS_DB.filter do |complaint|
            complaint.top_priority == true
        end
    end

    def self.filter_closed_status
        COMPLAINTS_DB.filter do |complaint|
            complaint.status == :closed
        end
    end


    def to_s
        "complaint: #{@title}"
    end
end




