class Quiz < ActiveRecord::Base
  # attr_accessible :title, :body
  has_many :short_answer_question
end
