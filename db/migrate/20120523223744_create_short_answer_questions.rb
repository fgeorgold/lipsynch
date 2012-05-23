class CreateShortAnswerQuestions < ActiveRecord::Migration
  def up
    create_table :short_answer_questions do |t|
    
    t.string :video_url
	t.string :answer

      t.timestamps
    end
  end
  
  def down
	drop_table :short_answer_questions
  end
end
