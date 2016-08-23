class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.references :user, index: true, foreign_key: true
      t.text :content
      t.text :image

      t.timestamps null: false
    end
  end
end
