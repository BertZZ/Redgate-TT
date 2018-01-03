# Redgate Tech Test

## The challenge
To design a piece of research to gather some quantitative data in order to understand whether the coding habits of software engineers change over the winter holiday period (in comparison to the rest of the year).

## The program
This program is a command line survey that asks 12 questions designed to gather data on software engineering habits over winter holidays. The Null Hypothesis is that the winter holidays do not effect the programing behaviours of software engineers. The program asks 12 questions and also provides some analysis methods for basic statistics. The code uses mostly an array to keep hold of all the answers and the questions and this allows easy minipulation of the data. I decided to write code here as it is an easy way to collect and store data in one program. The final answers array could even be exported to a .csv file in the future.

## How to use
In an interactive Ruby environment such as pry first require both files:
```
require '../lib/survey.rb'
require '../lib/analizer.rb'
```
Then make a survey and an analizer:
```
survey = Survey.new
analizer = Analizer.new
```
Now you can take the survey as many times as you need by running
```
survey.ask
```
Once you have had your respondents take your survey you can ue the analizer to do some statistical analysis. For example if you wanted to see all the responses from your 3rd survey taker you can type:
```
analizer.display_all_answers_from_user(survey.answers,survey.questions,3)
```

Or, to see all answers to question 7 type:
```
analizer.display_all_answers(survey.answers,survey.questions,7)
```

To find the most common response to Question 10 you can use:
```
analizer.question_mode(survey.answers,survey.question,10)
```

## List of things to add/refactor.
Due to unfortunate circumstances I only saw that I had recieved this test on the 1st of January. As such there is definatly further improvements and refactors that could be made such as:
- Guard claues on ask method if statement to prevent blank answers.
- Find a better way to test the survey that doesn't involve having to answer the questions everytime in RSpec.
