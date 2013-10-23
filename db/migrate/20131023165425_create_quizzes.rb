class CreateQuizzes < ActiveRecord::Migration
  def change
    create_table :quizzes do |t|
      t.string :name, default: "", null: false
      t.references :topic

      t.timestamps
    end
    add_index :quizzes, :topic_id
  end
end
