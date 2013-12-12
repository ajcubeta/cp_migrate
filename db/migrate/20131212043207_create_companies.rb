class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      # t.uuid :id
      t.string :name
      t.references :industry, :reviewer
      t.integer :strength
      t.string :registration_number

      t.time :start_normal_working_hours, :end_normal_working_hours
      t.time :start_saturday_working_hours, :end_saturday_working_hours

      t.string :website

      t.string :company_logo_file_name
      t.string :company_logo_content_type
      t.integer :company_logo_file_size
      t.datetime :company_logo_updated_at

      t.text :description
      t.boolean :show_desc, :default => false

      t.integer :job_postings_count, :null => false, :default => 0
      t.integer :employers_count, :null => false, :default => 0
      t.integer :published_job_postings_count, :null => false, :default => 0
      t.integer :company_addresses_count, :null => false, :default => 0

      t.string :status, :default => "new"

      t.boolean :delta, :default => false

      t.timestamps
    end
  end
end
