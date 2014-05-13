class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :name
      t.string :degree
      t.float :gpa
      t.string :major
      t.date :grad_date
      t.text :other

      t.timestamps
    end
    add_reference :schools, :education, index: true
  end
end
