class CreateUserQuestionsAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :user_questions_answers do |t|

      t.timestamps
    end
  end
end
