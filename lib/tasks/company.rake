namespace :company do
  task :import_companies_from_csv => :environment do
    errors = []
    p "Using Rake to run importing of companies to Psql"

    begin
      # EmployeeImporter.import('/path/to/file.xls')
      CompanyImporter.import('/private/assets/csv/companies.csv')
    rescue Exception => e
      errors << "#{e.message}"
      p errors
    end
  end
end