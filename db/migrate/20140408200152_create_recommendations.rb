class CreateRecommendations < ActiveRecord::Migration
  def change
    create_table :recommendations do |t|
      t.timestamps
    end
    add_reference :recommendations, :resume_info, index: true
  end
end
