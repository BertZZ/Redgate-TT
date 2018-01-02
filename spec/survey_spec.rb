require 'survey'

describe Survey do
  subject(:survey) {described_class.new}
  it { is_expected.to be_a Survey}

  it 'has a set of Questions' do
    expect(subject.questions).to be_a Array
  end


end
