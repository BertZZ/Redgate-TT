require 'survey'

describe Survey do
  subject(:survey) {described_class.new}
  it { is_expected.to be_a Survey}

  it 'has a set of Questions' do
    expect(subject.questions).to be_a Array
  end

  describe '#ask' do
    it 'Asks the responder the questions' do
      expect {subject.ask}.to output.to_stdout
    end
    it 'Stores the responders set of answers to the answers array' do
      subject.ask
      expect(subject.answers.length).to eq(1)
    end
    it 'Stores an answer for each of the Questions' do
      subject.ask
      expect(subject.answers[0].length).to eq(subject.questions.length)
    end
  end
end
