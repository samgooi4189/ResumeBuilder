class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :name
      t.string :degree
      t.float :gpa
      t.string :major
      t.date :grad_date
      t.text :other
      t.integer :educ_id

      t.timestamps
    end
  end
end
