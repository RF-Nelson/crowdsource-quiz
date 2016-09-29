class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :answer
      t.string :wrong_choice1
      t.string :wrong_choice2
      t.string :wrong_choice3
      t.string :wrong_choice4

      t.timestamps null: false
    end
  end
end
