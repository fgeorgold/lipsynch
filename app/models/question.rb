class Question < ActiveRecord::Base
  belongs_to :quiz
  attr_accessible :quiz, :youtube_id, :answer
end
