# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"
require 'rest-client'


puts'Deleting everything'
Message.destroy_all
Chatroom.destroy_all
CourseReview.destroy_all
LanguageReview.destroy_all
MentorReview.destroy_all
Ticket.destroy_all
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


puts'Creating languages'

ruby = Language.create!(name:'Ruby', description: 'Ruby is an interpreted, high-level, general-purpose programming language. It was designed and developed in the mid-1990s by Yukihiro "Matz" Matsumoto in Japan.', image_url: "https://res.cloudinary.com/dezddjh1o/image/upload/v1624451069/cards/ruby-card2_dkehtx.jpg")
html = Language.create!(name:'HTML', description: 'The HyperText Markup Language, or HTML is the standard markup language for documents designed to be displayed in a web browser. It can be assisted by technologies such as Cascading Style Sheets (CSS) and scripting languages such as JavaScript.', image_url: "https://res.cloudinary.com/dezddjh1o/image/upload/v1624451068/cards/html-card4_qblcaa.jpg")
css = Language.create!(name: 'CSS', description: 'Cascading Style Sheets (CSS) is a style sheet language used for describing the presentation of a document written in a markup language such as HTML. CSS is a cornerstone technology of the World Wide Web, alongside HTML and JavaScript.', image_url: "https://res.cloudinary.com/dezddjh1o/image/upload/v1624451068/cards/css-card3_sk4jlv.jpg")
js = Language.create!(name: 'JavaScript', description: 'JavaScript, often abbreviated as JS, is a programming language that conforms to the ECMAScript specification. JavaScript is high-level, often just-in-time compiled, and multi-paradigm. It has curly-bracket syntax, dynamic typing, prototype-based object-orientation, and first-class functions.', image_url: "https://res.cloudinary.com/dezddjh1o/image/upload/v1624451069/cards/js-card3_ve70cq.jpg")
python = Language.create!(name: 'Python', description: "Python is an interpreted high-level general-purpose programming language. Python's design philosophy emphasizes code readability with its notable use of significant indentation. Its language constructs as well as its object-oriented approach aim to help programmers write clear, logical code for small and large-scale projects.", image_url: "https://res.cloudinary.com/dezddjh1o/image/upload/v1624451069/cards/python-card2_zfzucf.jpg")
cmas = Language.create!(name: 'C++', description: "C++ is a general-purpose programming language created by Bjarne Stroustrup as an extension of the C programming language, or 'C with Classes'. The language has expanded significantly over time, and modern C++ now has object-oriented, generic, and functional features in addition to facilities for low-level memory manipulation.", image_url: "https://res.cloudinary.com/dezddjh1o/image/upload/v1624451068/cards/cplus-card2_znxdjb.jpg")
rust = Language.create!(name: 'Rust', description: "Rust is a multi-paradigm programming language designed for performance and safety, especially safe concurrency. Rust is syntactically similar to C++, but can guarantee memory safety by using a borrow checker to validate references. Rust achieves memory safety without garbage collection, and reference counting is optional.", image_url: "https://res.cloudinary.com/dezddjh1o/image/upload/v1624451069/cards/rust-card2_cdgivp.jpg")
sql = Language.create!(name: 'SQL', description: 'SQL, "sequel"; Structured Query Language, is a domain-specific language used in programming and designed for managing data held in a relational database management system (RDBMS), or for stream processing in a relational data stream management system (RDSMS). It is particularly useful in handling structured data, i.e. data incorporating relations among entities and variables.', image_url: "https://res.cloudinary.com/dezddjh1o/image/upload/v1624451069/cards/sql-card2_qjbbwb.jpg")

puts 'creating quiz'

first_quiz = Quiz.create!(name: 'start from 0', user: user)

puts 'creating answers'

answer1 = Answer.create!(content: "Travel", language: ruby)
answer2 = Answer.create!(content: "Design", language: css)
answer3 = Answer.create!(content: "Solving difficult tasks", language: js)
answer4 = Answer.create!(content: "Organize things", language: html)

answer5 = Answer.create!(content: "Happy, motivated, clever", language: js)
answer6 = Answer.create!(content: "Creative, traveler, open-minded", language: html)
answer7 = Answer.create!(content: "Motivated, easily distracted, flexible", language: ruby)
answer8 = Answer.create!(content: "Imaginative, logical, passionate", language: css)

answer9 = Answer.create!(content: "I prefer to stay up late/ get up early to have more time to get things done", language: js)
answer10 = Answer.create!(content: "I roll up my sleeves and start working as soon as possible", language: ruby)
answer11 = Answer.create!(content: "I do one thing at a time and take some nice breaks in between", language: html)
answer12 = Answer.create!(content: "I get the work done in the last minute", language: css)

answer13 = Answer.create!(content: "I approach it with enthusiasm to keep the mood positive", language: html)
answer14 = Answer.create!(content: "I analyze the problem and the possible solutions until I find the best way to solve it" language: js)
answer15 = Answer.create!(content: "I like to brainstorm and maybe ask other people for help", language: css)
answer16 = Answer.create!(content: "I don't want to bother others so I just relay on myself.", language: ruby)

answer17 = Answer.create!(content: "I find it hard to ask for help", language: ruby)
answer18 = Answer.create!(content: "I get impatient when projects run beyond the deadline", language: html)
answer19 = Answer.create!(content: "I focus too much on the details", language: css)
answer20 = Answer.create!(content: "I have a hard time letting go of a project", language: js)

answer21 = Answer.create!(content: "To be independent and work on my own projects", language: ruby)
answer22 = Answer.create!(content: "to learn some coding languages and increase my knowledge", language: html)
answer23 = Answer.create!(content: "I need it for my job", language: js)
answer24 = Answer.create!(content: "Just out of interest", language: css)

puts 'creating questions'

question_one = Question.create!(content: "Which of the following activities suits you best?", quiz: first_quiz)
question_two = Question.create!(content: "How would you describe yourself?", quiz: first_quiz)
question_three = Question.create!(content: "How do you face a difficult project?", quiz: first_quiz)
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



puts 'creating mentors'


# file = URI.open('https://www.codemotion.com/magazine/wp-content/uploads/2018/10/lerdorf-896x504.jpg')
#   mentor = User.new
#     mentor.first_name = 'Rasmus'
#     mentor.last_name = 'Lerdorf'
#     mentor.email = 'RasmusLerdorf@gmail.com'
#     mentor.description = "I'm a Danish-Canadian programmer. I co-authored and inspired the PHP scripting language, I can't wait to help you out with your php code!"
#     mentor.password = '123456'
#     mentor.password_confirmation = '123456'
#     mentor.mentor = true
#     mentor.pro = true
#     mentor.save!
#     mentor.profile_picture.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

# file = URI.open('https://todobiografias.net/wp-content/uploads/2019/03/sergey-brin.jpg')
#     mentor = User.new
#       mentor.first_name = 'Sergey'
#       mentor.last_name = 'Brin'
#       mentor.email = 'Brinn@gmail.com'
#       mentor.description = "I'm a computer scientist and Internet entrepreneur. I was a co-founder of Google and president of Alphabet inc. and I'm here to help you grow"
#       mentor.password = '123456'
#       mentor.password_confirmation = '123456'
#       mentor.mentor = true
#       mentor.pro = true
#       mentor.save!
#       mentor.profile_picture.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
      
# file = URI.open('https://tecno.americaeconomia.com/sites/tecno.americaeconomia.com/files/styles/photo_article/public/field/image/0024835473.jpg?itok=gd0ntDgl')
#     mentor = User.new
#       mentor.first_name = 'Tanmay'
#       mentor.last_name = 'Bakshi'
#       mentor.email = 'BakshiT@gmail.com'
#       mentor.description = 'TED & Keynote speaker, Google Developer Expert for Machine Learning, IBM Advisory Software Engineer, and a huge fan of SpongeBob SquarePants'
#       mentor.password = '123456'
#       mentor.password_confirmation = '123456'
#       mentor.mentor = true
#       mentor.pro = true
#       mentor.save!
#       mentor.profile_picture.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

# file = URI.open('https://tentulogo.com/wp-content/uploads/Mark-Zuckerberg.jpg')
#     mentor = User.new
#       mentor.first_name = 'Mark'
#       mentor.last_name = 'Zuckerberg'
#       mentor.email = 'FacebookBoss@gmail.com'
#       mentor.description = "Internet entrepreneur, and philanthropist. some will know me for having founded facebook, but I've been programming for much longer."
#       mentor.password = '123456'
#       mentor.password_confirmation = '123456'
#       mentor.mentor = true
#       mentor.pro = true
#       mentor.save!
#       mentor.profile_picture.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

# file = URI.open('https://upload.wikimedia.org/wikipedia/commons/6/68/Margaret_Hamilton_1995.jpg')
#       mentor = User.new
#         mentor.first_name = 'Margaret'
#         mentor.last_name = 'Hamilton'
#         mentor.email = 'HamiltonMargaret@gmail.com'
#         mentor.description = "American computer scientist who was one of the first computer software programs; I created the term software engineer to describe my work."
#         mentor.password = '123456'
#         mentor.password_confirmation = '123456'
#         mentor.mentor = true
#         mentor.pro = true
#         mentor.save!
#         mentor.profile_picture.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

# file = URI.open('https://assets.thehansindia.com/h-upload/2020/11/09/1600x960_1010722-arham-om-talsania.jpg')
#       mentor = User.new
#         mentor.first_name = 'Arham'
#         mentor.last_name = 'Om Talsania'
#         mentor.email = 'Arham6Om@gmail.com'
#         mentor.description = "I'm a six-year-old boy who has become the world's youngest computer programmer. I created a Guinness World Record by clearing the powerful ‘Python Programming Language’ exam"
#         mentor.password = '123456'
#         mentor.password_confirmation = '123456'
#         mentor.mentor = true
#         mentor.pro = true
#         mentor.save!
#         mentor.profile_picture.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')        


# puts "creating courses"

#   #HTML COURSES
#   url = "https://www.udemy.com/api-2.0/courses/?page=2&page_size=12&search=html"  
 
#   request = RestClient.get(url, headers={ "Accept" => "application/json, text/plain, */*",
#     "Authorization" => "Basic Zkd5S2xsZXZsVm5HcE9ITTh4YzdBR3ZWVk0zMDlQTXdqVE05c2hHeDo0RmhKbDJ1TFdOWVZNZGlUc1ZhRkhTRVkyclFuVmJldlFOejJKM09zYjk2N3ptSFJtdGxVcWczMmZ1ZGpHNThoOUN4ajZ3VGdlZUxCS0ZmdlJYWnhsczZkSk5OdmZkVTZoWjh6aHlRUUdwNzRKejUzZVdaSXZ3eVM3M093eWtqag==",
#     "Content-Type" =>"application/json;charset=utf-8" })
#   response = JSON.parse request

#   response['results'].each do |course|
#     Course.create!(name: course['title'], description: course['headline'], language:html, image_url: course['image_480x270'], price: course['price_detail']['amount'], url: course['url'])
#   end

#   #RUBY COURSES
#   url = "https://www.udemy.com/api-2.0/courses/?page=2&page_size=12&search=ruby"  
 
#   request = RestClient.get(url, headers={ "Accept" => "application/json, text/plain, */*",
#     "Authorization" => "Basic Zkd5S2xsZXZsVm5HcE9ITTh4YzdBR3ZWVk0zMDlQTXdqVE05c2hHeDo0RmhKbDJ1TFdOWVZNZGlUc1ZhRkhTRVkyclFuVmJldlFOejJKM09zYjk2N3ptSFJtdGxVcWczMmZ1ZGpHNThoOUN4ajZ3VGdlZUxCS0ZmdlJYWnhsczZkSk5OdmZkVTZoWjh6aHlRUUdwNzRKejUzZVdaSXZ3eVM3M093eWtqag==",
#     "Content-Type" =>"application/json;charset=utf-8" })
#   response = JSON.parse request

#   response['results'].each do |course|
#     Course.create!(name: course['title'], description: course['headline'], language:ruby, image_url: course['image_480x270'], price: course['price_detail']['amount'], url: course['url'])
#   end

#   #JS COURSES
#   url = "https://www.udemy.com/api-2.0/courses/?page=2&page_size=12&search=javascript"  
 
#   request = RestClient.get(url, headers={ "Accept" => "application/json, text/plain, */*",
#     "Authorization" => "Basic Zkd5S2xsZXZsVm5HcE9ITTh4YzdBR3ZWVk0zMDlQTXdqVE05c2hHeDo0RmhKbDJ1TFdOWVZNZGlUc1ZhRkhTRVkyclFuVmJldlFOejJKM09zYjk2N3ptSFJtdGxVcWczMmZ1ZGpHNThoOUN4ajZ3VGdlZUxCS0ZmdlJYWnhsczZkSk5OdmZkVTZoWjh6aHlRUUdwNzRKejUzZVdaSXZ3eVM3M093eWtqag==",
#     "Content-Type" =>"application/json;charset=utf-8" })
#   response = JSON.parse request

#   response['results'].each do |course|
#     Course.create!(name: course['title'], description: course['headline'], language:js, image_url: course['image_480x270'], price: course['price_detail']['amount'], url: course['url'])
#   end

#   #css COURSES
#   url = "https://www.udemy.com/api-2.0/courses/?page=2&page_size=12&search=css"
 
#   request = RestClient.get(url, headers={ "Accept" => "application/json, text/plain, */*",
#     "Authorization" => "Basic Zkd5S2xsZXZsVm5HcE9ITTh4YzdBR3ZWVk0zMDlQTXdqVE05c2hHeDo0RmhKbDJ1TFdOWVZNZGlUc1ZhRkhTRVkyclFuVmJldlFOejJKM09zYjk2N3ptSFJtdGxVcWczMmZ1ZGpHNThoOUN4ajZ3VGdlZUxCS0ZmdlJYWnhsczZkSk5OdmZkVTZoWjh6aHlRUUdwNzRKejUzZVdaSXZ3eVM3M093eWtqag==",
#     "Content-Type" =>"application/json;charset=utf-8" })
#   response = JSON.parse request

#   response['results'].each do |course|
#     Course.create!(name: course['title'], description: course['headline'], language:css, image_url: course['image_480x270'], price: course['price_detail']['amount'], url: course['url'])
#   end
  
#   #PYTHON COURSES
#   url = "https://www.udemy.com/api-2.0/courses/?page=2&page_size=12&search=python"
 
#   request = RestClient.get(url, headers={ "Accept" => "application/json, text/plain, */*",
#     "Authorization" => "Basic Zkd5S2xsZXZsVm5HcE9ITTh4YzdBR3ZWVk0zMDlQTXdqVE05c2hHeDo0RmhKbDJ1TFdOWVZNZGlUc1ZhRkhTRVkyclFuVmJldlFOejJKM09zYjk2N3ptSFJtdGxVcWczMmZ1ZGpHNThoOUN4ajZ3VGdlZUxCS0ZmdlJYWnhsczZkSk5OdmZkVTZoWjh6aHlRUUdwNzRKejUzZVdaSXZ3eVM3M093eWtqag==",
#     "Content-Type" =>"application/json;charset=utf-8" })
#   response = JSON.parse request

#   response['results'].each do |course|
#     Course.create!(name: course['title'], description: course['headline'], language:python, image_url: course['image_480x270'], price: course['price_detail']['amount'], url: course['url'])
#   end

#   #C++ COURSES
#   url = "https://www.udemy.com/api-2.0/courses/?page=2&page_size=12&search=c++"
 
#   request = RestClient.get(url, headers={ "Accept" => "application/json, text/plain, */*",
#     "Authorization" => "Basic Zkd5S2xsZXZsVm5HcE9ITTh4YzdBR3ZWVk0zMDlQTXdqVE05c2hHeDo0RmhKbDJ1TFdOWVZNZGlUc1ZhRkhTRVkyclFuVmJldlFOejJKM09zYjk2N3ptSFJtdGxVcWczMmZ1ZGpHNThoOUN4ajZ3VGdlZUxCS0ZmdlJYWnhsczZkSk5OdmZkVTZoWjh6aHlRUUdwNzRKejUzZVdaSXZ3eVM3M093eWtqag==",
#     "Content-Type" =>"application/json;charset=utf-8" })
#   response = JSON.parse request

#   response['results'].each do |course|
#     Course.create!(name: course['title'], description: course['headline'], language:cmas, image_url: course['image_480x270'], price: course['price_detail']['amount'], url: course['url'])
#   end

#   #Rust COURSES
#   url = "https://www.udemy.com/api-2.0/courses/?page=2&page_size=12&search=rust"
 
#   request = RestClient.get(url, headers={ "Accept" => "application/json, text/plain, */*",
#     "Authorization" => "Basic Zkd5S2xsZXZsVm5HcE9ITTh4YzdBR3ZWVk0zMDlQTXdqVE05c2hHeDo0RmhKbDJ1TFdOWVZNZGlUc1ZhRkhTRVkyclFuVmJldlFOejJKM09zYjk2N3ptSFJtdGxVcWczMmZ1ZGpHNThoOUN4ajZ3VGdlZUxCS0ZmdlJYWnhsczZkSk5OdmZkVTZoWjh6aHlRUUdwNzRKejUzZVdaSXZ3eVM3M093eWtqag==",
#     "Content-Type" =>"application/json;charset=utf-8" })
#   response = JSON.parse request

#   response['results'].each do |course|
#     Course.create!(name: course['title'], description: course['headline'], language:rust, image_url: course['image_480x270'], price: course['price_detail']['amount'], url: course['url'])
#   end

#   #SQL COURSES
#   url = "https://www.udemy.com/api-2.0/courses/?page=2&page_size=12&search=sql"
 
#   request = RestClient.get(url, headers={ "Accept" => "application/json, text/plain, */*",
#     "Authorization" => "Basic Zkd5S2xsZXZsVm5HcE9ITTh4YzdBR3ZWVk0zMDlQTXdqVE05c2hHeDo0RmhKbDJ1TFdOWVZNZGlUc1ZhRkhTRVkyclFuVmJldlFOejJKM09zYjk2N3ptSFJtdGxVcWczMmZ1ZGpHNThoOUN4ajZ3VGdlZUxCS0ZmdlJYWnhsczZkSk5OdmZkVTZoWjh6aHlRUUdwNzRKejUzZVdaSXZ3eVM3M093eWtqag==",
#     "Content-Type" =>"application/json;charset=utf-8" })
#   response = JSON.parse request

#   response['results'].each do |course|
#     Course.create!(name: course['title'], description: course['headline'], language:sql, image_url: course['image_480x270'], price: course['price_detail']['amount'], url: course['url'])
#   end

puts 'creating reviews'

  LanguageReview.create!(comment: "AAA", user: User.first, language: html, rating: 3)
  LanguageReview.create!(comment: "AAA", user: User.first, language: css, rating: 3)
  LanguageReview.create!(comment: "AAA", user: User.first, language: js, rating: 5)
  LanguageReview.create!(comment: "AAA", user: User.first, language: cmas, rating: 4)
  LanguageReview.create!(comment: "AAA", user: User.first, language: rust, rating: 4)
  LanguageReview.create!(comment: "AAA", user: User.first, language: sql, rating: 3)
