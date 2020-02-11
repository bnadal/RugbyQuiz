# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)





UserAnswer.destroy_all
QuestionsChoice.destroy_all
Question.destroy_all
Quiz.destroy_all
User.destroy_all


user1 = User.create!({ email: "user1@gmail.com", password: "123456", pseudo: "user1" })

user2 = User.create!({ email: "user2@gmail.com", password: "123456", pseudo: "user2" })

quiz1 = Quiz.create!({ user: user1, result: 5})

quiz2 = Quiz.create!({ user: user1, result: 8})

quiz3 = Quiz.create!({ user: user2, result: 0})

question1 = Question.create!({ quiz: quiz1, question: "Vainqueur du TOP14 2019 ?", category: "TOP 14"})

question2 = Question.create!({ quiz: quiz1, question: "Vainqueur du PROD2 2019 ?", category: "PRO D2"})

question1_choice1 = QuestionsChoice.create!({ question: question1, choice: "Toulouse", right_choice:"Y"})

question1_choice2 = QuestionsChoice.create!({ question: question1, choice: "Clermont", right_choice:"N"})

question2_choice1 = QuestionsChoice.create!({ question: question2, choice: "Bayonne", right_choice:"Y"})

question2_choice2 = QuestionsChoice.create!({ question: question2, choice: "Beziers", right_choice:"N"})

question1_answer = UserAnswer.create!({ question: question1, answer: "Toulouse", questions_choice: question1_choice1, user: user1})

question2_answer = UserAnswer.create!({ question: question2, answer: "Bayonne", questions_choice: question2_choice1, user: user1})


question3 = Question.create!({ quiz: quiz2, question: "Arbitre de la finale du TOP14 2019 ?", category: "Arbitrage"})

question4 = Question.create!({ quiz: quiz3, question: "Nom du stade de l'ASBH ?", category: "Stades"})

question3_choice1 = QuestionsChoice.create!({ question: question3, choice: "Romain Poite", right_choice:"N"})

question3_choice2 = QuestionsChoice.create!({ question: question3, choice: "Jerome Garces", right_choice:"Y"})

question4_choice1 = QuestionsChoice.create!({ question: question4, choice: "Raoul Barriere", right_choice:"Y"})

question4_choice2 = QuestionsChoice.create!({ question: question4, choice: "Stade Municipal", right_choice:"N"})
