class Analizer

  def see_all_answers_from_user(answers,questions,user) # Shows all the answers from one user

  end

  def compare_answers_from_user(answers,questions,user,question1,question2) # Shows the answers from 2 questions from one user
  end

  def display_all_answers(answers,questions,question1) # Shows answers to the same question from all users
    puts "Answers to " + questions[question1- 1]
    answers.each do |response|
      puts response[question1 - 1]
    end
  end

  def question_mean(answers,questions,question1) # Shows mean average of specific question
  end

  def question_mode(answers,questions,question1) # Shows mode average of specific question
  end

end
