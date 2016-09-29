class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :question_text, null: false
      t.string :answer, null: false
      t.string :wrong_choice1, null: false
      t.string :wrong_choice2
      t.string :wrong_choice3
      t.string :wrong_choice4

      t.timestamps null: false
    end
  end
end
