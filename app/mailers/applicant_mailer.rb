class ApplicantMailer < ApplicationMailer
     default from: "admin@ddms.com"
     
     def sample_email(user)
          @user = user
          mail(to: @user.email, subject: 'sample email', body: 'something')
     end
     
end
