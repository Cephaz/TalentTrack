class CreateJobLanguages < ActiveRecord::Migration[7.1]
  def change
    create_table :job_languages do |t|
      t.references :job_offer, null: false, foreign_key: true
      t.references :programming_language, null: false, foreign_key: true
      t.string :level

      t.timestamps
    end
  end
end
