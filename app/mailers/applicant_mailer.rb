class ApplicantMailer < ApplicationMailer
     default from: "addms331@gmail.com"
     
     def sample_email(user)
          @user = user
          mail(:to => @user.email, :subject => 'sample email', :body => 'hello!')
     end
     
end
