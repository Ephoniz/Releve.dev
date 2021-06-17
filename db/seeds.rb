# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts'Deleting everything'

Language.destroy_all
Course.destroy_all
Enrolment.destroy_all
Quiz.destroy_all
QuestionAnswer.destroy_all
Question.destroy_all
Answer.destroy_all
User.destroy_all

puts 'creating a user'

user = User.new
  user.first_name = 'Admin'
  user.last_name = 'test account'
  user.email = 'admin@email.com'
  user.password = '123456'
  user.password_confirmation = '123456'
  user.save!

puts 'Creating a mentor'
  mentor = User.new
    mentor.first_name = 'Mentor'
    mentor.last_name = 'Miyagi'
    mentor.email = 'mm@email.com'
    mentor.password = '123456'
    mentor.password_confirmation = '123456'
    mentor.mentor = true
    mentor.save!
puts'Creating languages'

ruby = Language.create!(name:'Ruby')
html = Language.create!(name:'HTML')

puts'Creating courses'

Course.create!(name:'Ruby', description:'easy', language:ruby)
Course.create!(name:'JS', description:'hard', language:html)

puts 'creating quiz'

first_quiz = Quiz.create!(name: 'start from 0', user: user)

puts 'creating answers'

answer_one = Answer.create!(content: "This is an answer 1", language: ruby)
answer_two = Answer.create!(content: "This is an answer 2", language: ruby)
answer_three = Answer.create!(content: "This is an answer 3", language: html)
answer_four = Answer.create!(content: "This is an answer 4", language: html)


puts 'creating questions'

question_one = Question.create!(content: "question 1", quiz: first_quiz)
question_two = Question.create!(content: "question 2", quiz: first_quiz)
question_three = Question.create!(content: "question 3", quiz: first_quiz)

puts 'linking answers to questions'

question_to_answer1 = QuestionAnswer.create!(question: question_one, answer: answer_one)
question_to_answer2 = QuestionAnswer.create!(question: question_one, answer: answer_two)
question_to_answer3 = QuestionAnswer.create!(question: question_two, answer: answer_one)
question_to_answer4 = QuestionAnswer.create!(question: question_two, answer: answer_three)
question_to_answer5 = QuestionAnswer.create!(question: question_three, answer: answer_three)
question_to_answer6 = QuestionAnswer.create!(question: question_three, answer: answer_four)


puts'done'

