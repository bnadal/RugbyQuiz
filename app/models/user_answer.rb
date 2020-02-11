class UserAnswer < ApplicationRecord
  belongs_to :questions_choice
  belongs_to :question
  belongs_to :user
end
