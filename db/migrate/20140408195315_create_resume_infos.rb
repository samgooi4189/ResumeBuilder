class CreateResumeInfos < ActiveRecord::Migration
  def change
    create_table :resume_infos do |t|
      t.timestamps
    end
    add_reference :resume_infos, :user, index: true
  end
end
