class CreateEducations < ActiveRecord::Migration
  def change
    create_table :educations do |t|
      t.timestamps
    end
    add_reference :educations, :resume_info, index: true
  end
end
