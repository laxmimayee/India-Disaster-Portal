class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :company_name
      t.text :hiring_description
      t.string :company_url
      t.string :job_location
      t.string :email
      t.string :display_at
      t.string :approve, :default => "No"

      t.timestamps
    end
  end
end
