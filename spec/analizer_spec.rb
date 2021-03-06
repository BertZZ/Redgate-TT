require 'analizer'

describe Analizer do
  sample_questions = ["Question 1:", "Question 2", "Question 3"]
  sample_answers = [["1","1","5"],["6","4","3"],["9","2","2"],["1","4","2"]]

  subject(:analizer) {described_class.new}
  it { is_expected.to be_a Analizer}

  describe '#see_all_answers_from_user' do
    it 'Shows all the answers a User gave' do
      expect {subject.see_all_answers_from_user(sample_answers,sample_questions,2)}.to output("Users answer for Question 1: 6\nUsers answer for Question 2 4\nUsers answer for Question 3 3\n").to_stdout
    end
  end

  describe '#compare_answers_from_user' do
    it "Shows the answers a user gave to 2 different questions" do
      expect {subject.compare_answers_from_user(sample_answers,sample_questions,2,1,3)}.to output("Users answer to Question 1: 6\nUsers answer to Question 3 3\n").to_stdout
    end
  end

  describe '#display_all_answers' do
    it 'shows all the answers to a single qestion from all users' do
      expect {subject.display_all_answers(sample_answers,sample_questions,1)}.to output("Answers to Question 1:\n1\n6\n9\n1\n").to_stdout
    end
  end

  describe '#question_mean' do
    it 'returns the mean of the given numbers' do
      expect {subject.question_mean(sample_answers,sample_questions,1)}.to output("The mean of the answers to Question 1: is 4.25\n").to_stdout
    end
  end

  describe '#question_mode' do
    it 'returns the mode of the given numbers' do
      expect {subject.question_mode(sample_answers,sample_questions,1)}.to output("The mode of the answers to Question 1: is 1\n").to_stdout
    end
  end
end
