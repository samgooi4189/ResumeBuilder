class CreateExperiences < ActiveRecord::Migration
  def change
    create_table :experiences do |t|
      t.integer :resume_id

      t.timestamps
    end
  end
end
