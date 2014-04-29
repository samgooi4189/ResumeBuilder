class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.date :start_date
      t.date :end_date
      t.integer :exp_id

      t.timestamps
    end
  end
end
