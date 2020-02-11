class CreateQuestionsChoices < ActiveRecord::Migration[6.0]
  def change
    create_table :questions_choices do |t|
      t.string :choice
      t.string :right_choice

      t.timestamps
    end
  end
end
