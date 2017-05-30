class Applicant < ActiveRecord::Base
     
     belongs_to :users
     
     after_create :set_status
     
     def set_status
          self.status = false
     end
end
