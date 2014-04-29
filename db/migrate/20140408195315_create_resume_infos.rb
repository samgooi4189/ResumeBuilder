class CreateResumeInfos < ActiveRecord::Migration
  def change
    create_table :resume_infos do |t|
      t.integer :user_id

      t.timestamps
    end
  end
end
