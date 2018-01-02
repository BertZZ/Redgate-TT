require 'analizer'

describe Analizer do
  sample_questions = ["Question 1:", "Question 2", "Question 3"]
  sample_answers = [["1","1","5"],["6","4","3"],["9","2","2"],["1","4","2"]]

  subject(:analizer) {described_class.new}
  it { is_expected.to be_a Analizer}

  # describe '#see_all_answers_from_user' do
  #   it 'Shows all the answers a User gave' do
  #     expect {subject.see_all_answers_from_user(sample_answers,sample_questions,2)}.to output
  #   end
  # end

  describe '#display_all_answers' do
    it 'shows all the answers to a single qestion from all users' do
      expect {subject.display_all_answers(sample_answers,sample_questions,1)}.to output("Answers to Question 1:\n1\n6\n9\n1\n").to_stdout
    end
  end
end
