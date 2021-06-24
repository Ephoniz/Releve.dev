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

ruby = Language.create!(name:'Ruby', description: 'Ruby is an interpreted, high-level, general-purpose programming language. It was designed and developed in the mid-1990s by Yukihiro "Matz" Matsumoto in Japan.', image_url: 'https://purepng.com/public/uploads/large/purepng.com-ruby-stone-gemrubyblood-redgemstonemineral-corundumgemsapphires-1701528980134zql24.png')
html = Language.create!(name:'HTML', description: 'The HyperText Markup Language, or HTML is the standard markup language for documents designed to be displayed in a web browser. It can be assisted by technologies such as Cascading Style Sheets (CSS) and scripting languages such as JavaScript.', image_url: 'https://www.loopeando.com/wp-content/uploads/2016/11/html5.jpg')
css = Language.create!(name: 'CSS', description: 'Cascading Style Sheets (CSS) is a style sheet language used for describing the presentation of a document written in a markup language such as HTML. CSS is a cornerstone technology of the World Wide Web, alongside HTML and JavaScript.', image_url: 'https://www.solucionex.com/sites/default/files/posts/imagen/css_blog.png')
js = Language.create!(name: 'JavaScript', description: 'JavaScript, often abbreviated as JS, is a programming language that conforms to the ECMAScript specification. JavaScript is high-level, often just-in-time compiled, and multi-paradigm. It has curly-bracket syntax, dynamic typing, prototype-based object-orientation, and first-class functions.', image_url: 'data:image/png;base64,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')
python = Language.create!(name: 'python', description: "Python is an interpreted high-level general-purpose programming language. Python's design philosophy emphasizes code readability with its notable use of significant indentation. Its language constructs as well as its object-oriented approach aim to help programmers write clear, logical code for small and large-scale projects.", image_url: 'https://www.cice.es/wp-content/uploads/2020/06/programar-en-python.jpg')
cmas = Language.create!(name: 'C++', description: "C++ is a general-purpose programming language created by Bjarne Stroustrup as an extension of the C programming language, or 'C with Classes'. The language has expanded significantly over time, and modern C++ now has object-oriented, generic, and functional features in addition to facilities for low-level memory manipulation.", image_url: "https://i.ytimg.com/vi/dJzLmjSJc2c/maxresdefault.jpg")
rust = Language.create!(name: 'Rust', description: "Rust is a multi-paradigm programming language designed for performance and safety, especially safe concurrency. Rust is syntactically similar to C++, but can guarantee memory safety by using a borrow checker to validate references. Rust achieves memory safety without garbage collection, and reference counting is optional.", image_url: "https://www.akuaroworld.com/wp-content/uploads/2019/10/rust-banner.png")
sql = Language.create!(name: 'SQL', description: 'SQL, "sequel"; Structured Query Language, is a domain-specific language used in programming and designed for managing data held in a relational database management system (RDBMS), or for stream processing in a relational data stream management system (RDSMS). It is particularly useful in handling structured data, i.e. data incorporating relations among entities and variables.', image_url: "https://c8.alamy.com/compes/w3xej5/sql-con-tecnologia-abstracto-background-codigo-binario-digital-de-datos-binario-de-datos-seguro-y-de-concepto-software-desarrollador-web-codigo-de-programacion-y-sql-sq-w3xej5.jpg")

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



puts 'creating mentors'


file = URI.open('https://www.codemotion.com/magazine/wp-content/uploads/2018/10/lerdorf-896x504.jpg')
  mentor = User.new
    mentor.first_name = 'Rasums'
    mentor.last_name = 'Lerdorf'
    mentor.email = 'RasumsLerdorf@gmail.com'
    mentor.description = "I'm a Danish-Canadian programmer. I co-authored and inspired the PHP scripting language, I can't wait to help you out with your php code!"
    mentor.password = '123456'
    mentor.password_confirmation = '123456'
    mentor.mentor = true
    mentor.pro = true
    mentor.save!
    mentor.profile_picture.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

file = URI.open('https://todobiografias.net/wp-content/uploads/2019/03/sergey-brin.jpg')
    mentor = User.new
      mentor.first_name = 'Sergey'
      mentor.last_name = 'Brin'
      mentor.email = 'Brinn@gmail.com'
      mentor.description = "I'm a computer scientist and Internet entrepreneur. I was a co-founder of Google and president of Alphabet inc. and I'm here to help you grow"
      mentor.password = '123456'
      mentor.password_confirmation = '123456'
      mentor.mentor = true
      mentor.pro = true
      mentor.save!
      mentor.profile_picture.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
      
file = URI.open('https://tecno.americaeconomia.com/sites/tecno.americaeconomia.com/files/styles/photo_article/public/field/image/0024835473.jpg?itok=gd0ntDgl')
    mentor = User.new
      mentor.first_name = 'Tanmay'
      mentor.last_name = 'Bakshi'
      mentor.email = 'BakshiT@gmail.com'
      mentor.description = 'TED & Keynote speaker, Google Developer Expert for Machine Learning, IBM Advisory Software Engineer, and a huge fan of SpongeBob SquarePants'
      mentor.password = '123456'
      mentor.password_confirmation = '123456'
      mentor.mentor = true
      mentor.pro = true
      mentor.save!
      mentor.profile_picture.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

file = URI.open('https://tentulogo.com/wp-content/uploads/Mark-Zuckerberg.jpg')
    mentor = User.new
      mentor.first_name = 'Mark'
      mentor.last_name = 'Zuckerberg'
      mentor.email = 'FacebookBoss@gmail.com'
      mentor.description = "Internet entrepreneur, and philanthropist. some will know me for having founded facebook, but I've been programming for much longer."
      mentor.password = '123456'
      mentor.password_confirmation = '123456'
      mentor.mentor = true
      mentor.pro = true
      mentor.save!
      mentor.profile_picture.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

file = URI.open('https://upload.wikimedia.org/wikipedia/commons/6/68/Margaret_Hamilton_1995.jpg')
      mentor = User.new
        mentor.first_name = 'Margaret'
        mentor.last_name = 'Hamilton'
        mentor.email = 'HamiltonMargaret@gmail.com'
        mentor.description = "American computer scientist who was one of the first computer software programs; I created the term software engineer to describe my work."
        mentor.password = '123456'
        mentor.password_confirmation = '123456'
        mentor.mentor = true
        mentor.pro = true
        mentor.save!
        mentor.profile_picture.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

file = URI.open('https://assets.thehansindia.com/h-upload/2020/11/09/1600x960_1010722-arham-om-talsania.jpg')
      mentor = User.new
        mentor.first_name = 'Arham'
        mentor.last_name = 'Om Talsania'
        mentor.email = 'Arham6Om@gmail.com'
        mentor.description = "I'm a six-year-old boy who has become the world's youngest computer programmer. I created a Guinness World Record by clearing the powerful ‘Python Programming Language’ exam"
        mentor.password = '123456'
        mentor.password_confirmation = '123456'
        mentor.mentor = true
        mentor.pro = true
        mentor.save!
        mentor.profile_picture.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')        


puts "creating courses"

  #HTML COURSES
  url = "https://www.udemy.com/api-2.0/courses/?page=2&page_size=12&search=html"  
 
  request = RestClient.get(url, headers={ "Accept" => "application/json, text/plain, */*",
    "Authorization" => "Basic Zkd5S2xsZXZsVm5HcE9ITTh4YzdBR3ZWVk0zMDlQTXdqVE05c2hHeDo0RmhKbDJ1TFdOWVZNZGlUc1ZhRkhTRVkyclFuVmJldlFOejJKM09zYjk2N3ptSFJtdGxVcWczMmZ1ZGpHNThoOUN4ajZ3VGdlZUxCS0ZmdlJYWnhsczZkSk5OdmZkVTZoWjh6aHlRUUdwNzRKejUzZVdaSXZ3eVM3M093eWtqag==",
    "Content-Type" =>"application/json;charset=utf-8" })
  response = JSON.parse request

  response['results'].each do |course|
    Course.create!(name: course['title'], description: course['headline'], language:html, image_url: course['image_480x270'], price: course['price_detail']['amount'], url: course['url'])
  end

  #RUBY COURSES
  url = "https://www.udemy.com/api-2.0/courses/?page=2&page_size=12&search=ruby"  
 
  request = RestClient.get(url, headers={ "Accept" => "application/json, text/plain, */*",
    "Authorization" => "Basic Zkd5S2xsZXZsVm5HcE9ITTh4YzdBR3ZWVk0zMDlQTXdqVE05c2hHeDo0RmhKbDJ1TFdOWVZNZGlUc1ZhRkhTRVkyclFuVmJldlFOejJKM09zYjk2N3ptSFJtdGxVcWczMmZ1ZGpHNThoOUN4ajZ3VGdlZUxCS0ZmdlJYWnhsczZkSk5OdmZkVTZoWjh6aHlRUUdwNzRKejUzZVdaSXZ3eVM3M093eWtqag==",
    "Content-Type" =>"application/json;charset=utf-8" })
  response = JSON.parse request

  response['results'].each do |course|
    Course.create!(name: course['title'], description: course['headline'], language:ruby, image_url: course['image_480x270'], price: course['price_detail']['amount'], url: course['url'])
  end

  #JS COURSES
  url = "https://www.udemy.com/api-2.0/courses/?page=2&page_size=12&search=javascript"  
 
  request = RestClient.get(url, headers={ "Accept" => "application/json, text/plain, */*",
    "Authorization" => "Basic Zkd5S2xsZXZsVm5HcE9ITTh4YzdBR3ZWVk0zMDlQTXdqVE05c2hHeDo0RmhKbDJ1TFdOWVZNZGlUc1ZhRkhTRVkyclFuVmJldlFOejJKM09zYjk2N3ptSFJtdGxVcWczMmZ1ZGpHNThoOUN4ajZ3VGdlZUxCS0ZmdlJYWnhsczZkSk5OdmZkVTZoWjh6aHlRUUdwNzRKejUzZVdaSXZ3eVM3M093eWtqag==",
    "Content-Type" =>"application/json;charset=utf-8" })
  response = JSON.parse request

  response['results'].each do |course|
    Course.create!(name: course['title'], description: course['headline'], language:js, image_url: course['image_480x270'], price: course['price_detail']['amount'], url: course['url'])
  end

  #css COURSES
  url = "https://www.udemy.com/api-2.0/courses/?page=2&page_size=12&search=css"
 
  request = RestClient.get(url, headers={ "Accept" => "application/json, text/plain, */*",
    "Authorization" => "Basic Zkd5S2xsZXZsVm5HcE9ITTh4YzdBR3ZWVk0zMDlQTXdqVE05c2hHeDo0RmhKbDJ1TFdOWVZNZGlUc1ZhRkhTRVkyclFuVmJldlFOejJKM09zYjk2N3ptSFJtdGxVcWczMmZ1ZGpHNThoOUN4ajZ3VGdlZUxCS0ZmdlJYWnhsczZkSk5OdmZkVTZoWjh6aHlRUUdwNzRKejUzZVdaSXZ3eVM3M093eWtqag==",
    "Content-Type" =>"application/json;charset=utf-8" })
  response = JSON.parse request

  response['results'].each do |course|
    Course.create!(name: course['title'], description: course['headline'], language:css, image_url: course['image_480x270'], price: course['price_detail']['amount'], url: course['url'])
  end
  
  #PYTHON COURSES
  url = "https://www.udemy.com/api-2.0/courses/?page=2&page_size=12&search=python"
 
  request = RestClient.get(url, headers={ "Accept" => "application/json, text/plain, */*",
    "Authorization" => "Basic Zkd5S2xsZXZsVm5HcE9ITTh4YzdBR3ZWVk0zMDlQTXdqVE05c2hHeDo0RmhKbDJ1TFdOWVZNZGlUc1ZhRkhTRVkyclFuVmJldlFOejJKM09zYjk2N3ptSFJtdGxVcWczMmZ1ZGpHNThoOUN4ajZ3VGdlZUxCS0ZmdlJYWnhsczZkSk5OdmZkVTZoWjh6aHlRUUdwNzRKejUzZVdaSXZ3eVM3M093eWtqag==",
    "Content-Type" =>"application/json;charset=utf-8" })
  response = JSON.parse request

  response['results'].each do |course|
    Course.create!(name: course['title'], description: course['headline'], language:python, image_url: course['image_480x270'], price: course['price_detail']['amount'], url: course['url'])
  end

  #C++ COURSES
  url = "https://www.udemy.com/api-2.0/courses/?page=2&page_size=12&search=c++"
 
  request = RestClient.get(url, headers={ "Accept" => "application/json, text/plain, */*",
    "Authorization" => "Basic Zkd5S2xsZXZsVm5HcE9ITTh4YzdBR3ZWVk0zMDlQTXdqVE05c2hHeDo0RmhKbDJ1TFdOWVZNZGlUc1ZhRkhTRVkyclFuVmJldlFOejJKM09zYjk2N3ptSFJtdGxVcWczMmZ1ZGpHNThoOUN4ajZ3VGdlZUxCS0ZmdlJYWnhsczZkSk5OdmZkVTZoWjh6aHlRUUdwNzRKejUzZVdaSXZ3eVM3M093eWtqag==",
    "Content-Type" =>"application/json;charset=utf-8" })
  response = JSON.parse request

  response['results'].each do |course|
    Course.create!(name: course['title'], description: course['headline'], language:cmas, image_url: course['image_480x270'], price: course['price_detail']['amount'], url: course['url'])
  end

  #Rust COURSES
  url = "https://www.udemy.com/api-2.0/courses/?page=2&page_size=12&search=rust"
 
  request = RestClient.get(url, headers={ "Accept" => "application/json, text/plain, */*",
    "Authorization" => "Basic Zkd5S2xsZXZsVm5HcE9ITTh4YzdBR3ZWVk0zMDlQTXdqVE05c2hHeDo0RmhKbDJ1TFdOWVZNZGlUc1ZhRkhTRVkyclFuVmJldlFOejJKM09zYjk2N3ptSFJtdGxVcWczMmZ1ZGpHNThoOUN4ajZ3VGdlZUxCS0ZmdlJYWnhsczZkSk5OdmZkVTZoWjh6aHlRUUdwNzRKejUzZVdaSXZ3eVM3M093eWtqag==",
    "Content-Type" =>"application/json;charset=utf-8" })
  response = JSON.parse request

  response['results'].each do |course|
    Course.create!(name: course['title'], description: course['headline'], language:rust, image_url: course['image_480x270'], price: course['price_detail']['amount'], url: course['url'])
  end

  #SQL COURSES
  url = "https://www.udemy.com/api-2.0/courses/?page=2&page_size=12&search=sql"
 
  request = RestClient.get(url, headers={ "Accept" => "application/json, text/plain, */*",
    "Authorization" => "Basic Zkd5S2xsZXZsVm5HcE9ITTh4YzdBR3ZWVk0zMDlQTXdqVE05c2hHeDo0RmhKbDJ1TFdOWVZNZGlUc1ZhRkhTRVkyclFuVmJldlFOejJKM09zYjk2N3ptSFJtdGxVcWczMmZ1ZGpHNThoOUN4ajZ3VGdlZUxCS0ZmdlJYWnhsczZkSk5OdmZkVTZoWjh6aHlRUUdwNzRKejUzZVdaSXZ3eVM3M093eWtqag==",
    "Content-Type" =>"application/json;charset=utf-8" })
  response = JSON.parse request

  response['results'].each do |course|
    Course.create!(name: course['title'], description: course['headline'], language:sql, image_url: course['image_480x270'], price: course['price_detail']['amount'], url: course['url'])
  end
