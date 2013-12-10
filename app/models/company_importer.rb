# Using this gem ActiveImporter to test the cp_migration from MySQL exported CSV to local PSQL DB.
# https://github.com/continuum/active_importer
class CompanyImporter < ActiveImporter::Base
  imports Company

  column 'Name', :name
  column 'Industry', :industry do |industry_id|
    Industry.find_by(id: industry_id)
  end
  column 'Reviewer', :reviewer do |reviewer_id|
    Reviewer.find_by(id: reviewer_id)
  end
  column 'Strength', :strength
  column 'Registration number', :registration_number
  column 'Start normal working hours', :start_normal_working_hours
  column 'End normal working hours', :end_normal_working_hours
  column 'Start saturday working hours', :start_saturday_working_hours
  column 'End saturday working hours', :end_saturday_working_hours
  column 'Website', :website
  column 'Company logo file name', :company_logo_file_name
  column 'Company logo content type', :company_logo_content_type
  column 'Company logo file size', :company_logo_file_size
  column 'Company logo updated at', :company_logo_updated_at
  column 'Description', :description
  column 'Show descending', :show_desc
  column 'Job postings count', :job_postings_count
  column 'Employers count', :employers_count
  column 'Published job postings count', :published_job_postings_count
  column 'Company addresses count', :company_addresses_count
  column 'Status', :status
  column 'Delta', :delta
  column 'Created at', :created_at
  column 'Updated at', :updated_at
  column 'Credit terms', :credit_terms
  column 'Base months', :base_months
  column 'Guarantee period', :guarantee_period
  column 'Alternative saturdays', :alternate_saturdays
  column 'Variable rate', :variable_rate
  column 'Outsource billing', :outsource_billing
end

# *************************** 1. row ***************************
#                           id: 1
#                         name: Ribbet Interactive Pte. Ltd
#                  industry_id: 43
#                  reviewer_id: 3
#                     strength: 3
#          registration_number: 201007039N
#   start_normal_working_hours: 09:00:00
#     end_normal_working_hours: 18:00:00
# start_saturday_working_hours: NULL
#   end_saturday_working_hours: NULL
#                      website: http://www.ribbetinteractive.com
#       company_logo_file_name: ribbetinteractive.gif
#    company_logo_content_type: image/gif
#       company_logo_file_size: 984
#      company_logo_updated_at: 2010-05-26 10:03:36
#                  description: Web Application Development and Customized Solution Implementation
#                    show_desc: 0
#           job_postings_count: 2
#              employers_count: 2
# published_job_postings_count: 0
#      company_addresses_count: 1
#                       status: active
#                        delta: 0
#                   created_at: 2010-05-26 09:37:22
#                   updated_at: 2011-10-13 01:37:14
#                 credit_terms: 30
#                  base_months: 13
#             guarantee_period: 30
#          alternate_saturdays: 0
#                variable_rate: 0.12
#            outsource_billing: 0
# 1 row in set (0.00 sec)