class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
    add_reference :companies, :experience, index: true
    add_reference :companies, :user, index: true
  end
end
