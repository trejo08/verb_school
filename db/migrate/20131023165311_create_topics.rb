class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :title, default: "", null: false
      t.text :content
      t.references :unit

      t.timestamps
    end
    add_index :topics, :unit_id
  end
end
