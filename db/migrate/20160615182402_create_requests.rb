class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
        t.integer :goal_id
        t.integer :user_id
        t.integer :status_id
    end
  end
end
