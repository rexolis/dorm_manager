json.extract! applicant, :id, :name, :student_number, :course_year, :home_address, :status, :created_at, :updated_at
json.url applicant_url(applicant, format: :json)