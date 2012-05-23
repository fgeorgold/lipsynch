class ShortAnswerQuestion < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :quiz
end
