class AddUserToUserQuestionsAnswer < ActiveRecord::Migration[6.0]
  def change
    add_reference :user_questions_answers, :user, foreign_key: true
  end
end
