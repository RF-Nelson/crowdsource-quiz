class Question < ActiveRecord::Base
  validates :question_text, :answer, :wrong_choice1, presence: true
  validates :question_text, uniqueness: true
end
