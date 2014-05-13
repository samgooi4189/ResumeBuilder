class CreatePositions < ActiveRecord::Migration
  def change
    create_table :positions do |t|
      t.string :name
      t.text :tasks

      t.timestamps
    end
    add_reference :positions, :company, index: true
    add_reference :positions, :user, index: true
  end
end
