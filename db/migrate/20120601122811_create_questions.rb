class CreateQuestions < ActiveRecord::Migration
  def up
    create_table :questions do |t|

      t.string :youtube_id
      t.string :answer
      t.integer :quiz_id
      t.timestamps
    end
  end
  
  def down
    drop_table :questions
  end
end
       
