class AddAnswerToUserQuestionsAnswer < ActiveRecord::Migration[6.0]
  def change
    add_column :user_questions_answers, :answer, :string
  end
end
