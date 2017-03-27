# Preview all emails at http://localhost:3000/rails/mailers/applicant_mailer
class ApplicantMailerPreview < ActionMailer::Preview
     def applicant_mailer_preview
          ApplicantMailer.sample_email(User.first)
     end
end
