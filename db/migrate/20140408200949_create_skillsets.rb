class CreateSkillsets < ActiveRecord::Migration
  def change
    create_table :skillsets do |t|
      t.timestamps
    end
    add_reference :skillsets, :resume_info, index: true
  end
end
