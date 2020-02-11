class AddForeignKeyToUserQuestionsAnswers < ActiveRecord::Migration[6.0]
  def change
    add_reference :user_questions_answers, :question, foreign_key: true
    add_reference :user_questions_answers, :questions_choice, foreign_key: true
  end
end
