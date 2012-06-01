# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)
#

user1 = User.create!(:login => "elie", :password => "noune")
user2 = User.create!(:login => "asdf", :password => "asdfasdf")

quiz1 = Quiz.create!(:name => "Syllables Quiz")
Question.create!(:quiz => quiz1, :youtube_id => "nAHtUKzYhtU", :answer => "fa")
Question.create!(:quiz => quiz1, :youtube_id => "d1rpSeU8dJE", :answer => "a" )
Question.create!(:quiz => quiz1, :youtube_id => "E8WolIw0nHw", :answer => "ba")
Question.create!(:quiz => quiz1, :youtube_id => "8m1oH3mov6Q", :answer => "sa")
Question.create!(:quiz => quiz1, :youtube_id => "hvbZtKLMAhA", :answer => "da")



