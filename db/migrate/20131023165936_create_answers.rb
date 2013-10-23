class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :text_answer, default: "", null: false
      t.boolean :is_correct, default: false, null: false
      t.references :question

      t.timestamps
    end
    add_index :answers, :question_id
  end
end
