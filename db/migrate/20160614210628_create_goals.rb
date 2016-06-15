class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.integer :admin_id
      t.integer :category_id
      # t.belongs_to :admin
      # t.belongs_to :category
      t.string :title
      t.text  :description
    end
  end
end
