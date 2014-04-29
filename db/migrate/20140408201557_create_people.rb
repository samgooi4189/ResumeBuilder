class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.string :relationship
      t.string :phone
      t.string :email
      t.integer :recommend_id

      t.timestamps
    end
  end
end
