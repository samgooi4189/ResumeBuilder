class CreateInformation < ActiveRecord::Migration
  def change
    create_table :information do |t|
      t.string :name
      t.string :address_1
      t.string :address_2
      t.string :city_state_zip
      t.string :h_phone
      t.string :b_phone
      t.string :email
      t.integer :resume_id

      t.timestamps
    end
  end
end
