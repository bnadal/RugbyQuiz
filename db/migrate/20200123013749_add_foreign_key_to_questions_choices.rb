class AddForeignKeyToQuestionsChoices < ActiveRecord::Migration[6.0]
  def change
    add_reference :questions_choices, :question, foreign_key: true
  end
end
