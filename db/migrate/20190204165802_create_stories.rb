class CreateStories < ActiveRecord::Migration[5.2]

  def change
    create_table :stories do |t|
      t.string :name
      t.string :url
      t.integer :points
      t.float :dev
      t.float :review
      t.float :qa
      t.float :accepted
      t.datetime :started_at
      t.datetime :completed_at
    end
  end
end
