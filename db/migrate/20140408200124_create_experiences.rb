class CreateExperiences < ActiveRecord::Migration
  def change
    create_table :experiences do |t|
      t.timestamps
    end
    add_reference :experiences, :resume_info, index: true
  end
end
