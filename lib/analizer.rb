class Analizer

  def see_all_answers_from_user(answers,questions,user) # Shows all the answers from one user
      n = 0
      questions.each do |question|
        puts "Users answer for " + question + " " + answers[user - 1][n]
        n += 1
      end
  end

  def compare_answers_from_user(answers,questions,user,question1,question2) # Shows the answers from 2 questions from one user
    puts "Users answer to " + questions[question1- 1] + " " + answers[user - 1][question1- 1]
    puts "Users answer to " + questions[question2- 1] + " " + answers[user - 1][question2- 1]
  end

  def display_all_answers(answers,questions,question1) # Shows answers to the same question from all users
    puts "Answers to " + questions[question1- 1]
    answers.each do |response|
      puts response[question1 - 1]
    end
  end

  def question_mean(answers,questions,question1) # Shows mean average of specific question
    array = []
    answers.each do |response|
      value = response[question1 - 1].to_i
      array << value
    end
    mean = array.reduce(:+) / array.size.to_f
    puts "The mean of the answers to " + questions[question1-1] + " is #{mean}"
  end

  def question_mode(answers,questions,question1) # Shows mode average of specific question
    array = []
    answers.each do |response|
      value = response[question1 - 1].to_i
      array << value
    end
    mode = mode(array)
    puts "The mode of the answers to " + questions[question1-1] + " is #{mode}"
  end

  private

  def mode(array)
    counter = Hash.new(0)
    array.each do |i|
      counter[i] += 1
    end

    mode_array = []
    counter.each do |k, v|
      if v == counter.values.max
        mode_array << k
      end
      mode_array.sort
    end
    mode_array[0]
  end
end
