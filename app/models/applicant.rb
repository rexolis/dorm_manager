class Applicant < ActiveRecord::Base
     after_create :set_status
     
     def set_status
          self.status = false
     end
end
