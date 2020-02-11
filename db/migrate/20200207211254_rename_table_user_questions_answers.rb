class RenameTableUserQuestionsAnswers < ActiveRecord::Migration[6.0]
  def change
    rename_table :user_questions_answers, :user_answers
  end
end
