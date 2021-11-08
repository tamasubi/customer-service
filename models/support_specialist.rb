class SupportSpecialist
    attr_accessor :name, :email, :phone, :top_certified

    def initialize(name, email, phone, top_certified)
        @name = name
        @email = email
        @phone = phone
        @top_certified = top_certified
    end

    def to_s
        "support_specialis #{@name}"
    end
    
end

