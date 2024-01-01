class NewCreateJobApplications < ActiveRecord::Migration[7.1]
  def change
    create_table :job_applications do |t|
      t.references :user, null: false, foreign_key: true
      t.string :company_name, null: false
      t.string :job_title, null: false
      t.date :application_date
      t.string :application_status
      t.text :job_description
      t.string :job_link
      t.text :interview_follow_up

      t.timestamps
    end
  end
end
