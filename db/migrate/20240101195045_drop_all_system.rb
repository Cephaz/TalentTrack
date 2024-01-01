class DropAllSystem < ActiveRecord::Migration[7.1]
  def change
    drop_table :job_languages, if_exists: true, cascade: true
    drop_table :job_applications, if_exists: true, cascade: true
    drop_table :programming_languages, if_exists: true, cascade: true
    drop_table :job_offers, if_exists: true, cascade: true
  end
end
