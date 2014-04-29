class CreateSkillsets < ActiveRecord::Migration
  def change
    create_table :skillsets do |t|
      t.integer :resume_id

      t.timestamps
    end
  end
end
