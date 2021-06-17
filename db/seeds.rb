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
css = Language.create!(name: 'CSS')
js = Language.create!(name: 'JavaScript')

puts'Creating courses'

Course.create!(name:'Ruby', description:'easy', language:ruby)
Course.create!(name:'JS', description:'hard', language:html)

puts 'creating quiz'

first_quiz = Quiz.create!(name: 'start from 0', user: user)

puts 'creating answers'

answer1 = Answer.create!(content: "Travel", language: ruby)
answer2 = Answer.create!(content: "Design", language: css)
answer3 = Answer.create!(content: "Solving difficult tasks", language: js)
answer4 = Answer.create!(content: "scheme things", language: html)

answer5 = Answer.create!(content: "Happy, motivated, clever", language: js)
answer6 = Answer.create!(content: "Creative, traveler, world open", language: html)
answer7 = Answer.create!(content: "Motivated, easily distracted, flexible", language: ruby)
answer8 = Answer.create!(content: "Imaginative, Logical, passionate", language: css)

answer9 = Answer.create!(content: "Stay up late/ get up early to have more time to get things done", language: js)
answer10 = Answer.create!(content: "Roll up my sleeves and get to work", language: ruby)
answer11 = Answer.create!(content: "Do one thing at a time and take some nice breaks in between", language: html)
answer12 = Answer.create!(content: "I get the work done in the last minute", language: css)

answer13 = Answer.create!(content: "I approach it with enthusiasm to keep the mood positive", language: html)
answer14 = Answer.create!(content: "I lay out the problem and multiple option for solutions with clear path forward", language: js)
answer15 = Answer.create!(content: "I like to brainstorm and maybe ask other people for help", language: css)
answer16 = Answer.create!(content: "I react the way I feel others would best get out of my way quickly", language: ruby)

answer17 = Answer.create!(content: "I can have trouble asking for help", language: ruby)
answer18 = Answer.create!(content: "I get impatient when projects run beyond the deadline", language: html)
answer19 = Answer.create!(content: "I focus on too much detail", language: css)
answer20 = Answer.create!(content: "I have a hard time letting go of a project", language: js)

answer21 = Answer.create!(content: "To be independent and work on my own projects", language: ruby)
answer22 = Answer.create!(content: "to learn coding languages to increase my knowledge", language: html)
answer23 = Answer.create!(content: "I need it for my job", language: js)
answer24 = Answer.create!(content: "Just out of interest", language: css)

puts 'creating questions'

question_one = Question.create!(content: "Which activity for you feel you be best suited for?", quiz: first_quiz)
question_two = Question.create!(content: "How would you describe your character?", quiz: first_quiz)
question_three = Question.create!(content: "Which way best describes how you tackle a heavy to do list?", quiz: first_quiz)
question_four = Question.create!(content: "How do you confront a problem?", quiz: first_quiz)
question_five = Question.create!(content: "What is your weakness?", quiz: first_quiz)
question_six = Question.create!(content: "Why do you want to start coding?", quiz: first_quiz)

puts 'linking answers to questions'

QuestionAnswer.create!(question: question_one, answer: answer1)
QuestionAnswer.create!(question: question_one, answer: answer2)
QuestionAnswer.create!(question: question_one, answer: answer3)
QuestionAnswer.create!(question: question_one, answer: answer4)

QuestionAnswer.create!(question: question_two, answer: answer5)
QuestionAnswer.create!(question: question_two, answer: answer6)
QuestionAnswer.create!(question: question_two, answer: answer7)
QuestionAnswer.create!(question: question_two, answer: answer8)

QuestionAnswer.create!(question: question_three, answer: answer9)
QuestionAnswer.create!(question: question_three, answer: answer10)
QuestionAnswer.create!(question: question_three, answer: answer11)
QuestionAnswer.create!(question: question_three, answer: answer12)

QuestionAnswer.create!(question: question_four, answer: answer13)
QuestionAnswer.create!(question: question_four, answer: answer14)
QuestionAnswer.create!(question: question_four, answer: answer15)
QuestionAnswer.create!(question: question_four, answer: answer16)

QuestionAnswer.create!(question: question_five, answer: answer17)
QuestionAnswer.create!(question: question_five, answer: answer18)
QuestionAnswer.create!(question: question_five, answer: answer19)
QuestionAnswer.create!(question: question_five, answer: answer20)

QuestionAnswer.create!(question: question_six, answer: answer21)
QuestionAnswer.create!(question: question_six, answer: answer22)
QuestionAnswer.create!(question: question_six, answer: answer23)
QuestionAnswer.create!(question: question_six, answer: answer24)


puts'done'

