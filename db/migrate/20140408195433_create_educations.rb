class CreateEducations < ActiveRecord::Migration
  def change
    create_table :educations do |t|
      t.integer :resume_id

      t.timestamps
    end
  end
end
