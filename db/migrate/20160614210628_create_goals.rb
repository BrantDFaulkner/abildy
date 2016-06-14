class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.integer :user_id
      t.integer :category_id
      # t.belongs_to :user
      # t.belongs_to :category
      t.string :title
      t.text  :description
    end
  end
end
