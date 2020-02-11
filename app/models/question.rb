class Question < ApplicationRecord
  belongs_to :quiz
  has_many :questions_choices, dependent: :delete_all
  has_many :user_answers, dependent: :delete_all
end
