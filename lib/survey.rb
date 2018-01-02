class Survey
  attr_reader :questions
  def initialize
    @questions = [
    "Q1: In a standard week on how many days will you write code?",
    "Q2: On each of those days. approximatly how many hours each day do you spend writing code?",
    "Q3: How many differnt coding projects would you say you work on during a standard week?",
    "Q4: On a scale of 1-10 how likely are you to collaborate or pair program on any given project?",
    "Q5: Which programing language(s) do you use when coding these projects?",
    "Q6: On a scale of 1 to 10 how likely are you to contribute to open source projects throught the year?",
    "Q7: Over the winter holiday period how many days each week do you write code?",
    "Q8: On each of those days, approximatly how many hours each day do you spend writing code?",
    "Q9: How many differnt coding projects would you say you work on over the winter holiday period",
    "Q10: On a scale of 1-10 how likely are you to collaborate or pair program on any given project over the winter holiday period?",
    "Q11: On a scale of 1 to 10 how likely are you to contribute to open source projects throught the year?"]
  end
end
