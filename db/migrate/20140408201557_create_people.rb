class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.string :relationship
      t.string :phone
      t.string :email

      t.timestamps
    end
    add_reference :people, :recommendation, index: true
  end
end
