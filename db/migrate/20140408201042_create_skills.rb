class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
    add_reference :skills, :skillset, index: true
    add_reference :skills, :user, index: true
  end
end
