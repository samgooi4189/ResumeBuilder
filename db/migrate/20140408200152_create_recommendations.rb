class CreateRecommendations < ActiveRecord::Migration
  def change
    create_table :recommendations do |t|
      t.integer :resume_id

      t.timestamps
    end
  end
end
