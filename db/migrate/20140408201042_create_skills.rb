class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.string :name
      t.text :description
      t.integer :sset_id

      t.timestamps
    end
  end
end
