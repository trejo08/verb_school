class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :text_question, default: "", null: false
      t.references :quiz

      t.timestamps
    end
    add_index :questions, :quiz_id
  end
end
