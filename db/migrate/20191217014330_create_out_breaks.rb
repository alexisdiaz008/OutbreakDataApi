class CreateOutBreaks < ActiveRecord::Migration[6.0]
  def change
    create_table :out_breaks do |t|
      t.date :report_date
      t.string :state
      t.string :primary_mode
      t.string :etiology
      t.string :serotype_or_genotype
      t.string :etiology_status
      t.string :setting
      t.integer :illnesses
      t.integer :hospitalizations
      t.integer :deaths

      t.timestamps
    end
  end
end
