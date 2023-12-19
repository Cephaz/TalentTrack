class CreateJobOffers < ActiveRecord::Migration[7.1]
  def change
    create_table :job_offers do |t|
      t.string :title
      t.text :description
      t.string :company

      t.timestamps
    end
  end
end
