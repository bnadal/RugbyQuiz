class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.string :question
      t.string :category
      t.string :is_active

      t.timestamps
    end
  end
end
