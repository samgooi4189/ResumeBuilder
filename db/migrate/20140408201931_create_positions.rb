class CreatePositions < ActiveRecord::Migration
  def change
    create_table :positions do |t|
      t.string :name
      t.text :tasks
      t.integer :company_id

      t.timestamps
    end
  end
end
