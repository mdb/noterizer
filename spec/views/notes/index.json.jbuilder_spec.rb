require 'spec_helper'

describe 'notes/index', type: :view do
  let(:notes) { [note_double, note_double] }

  before :each do
    assign(:notes, notes)

    render
  end

  context 'verifying the JSON it renders' do
    subject { JSON.parse(rendered) }

    describe 'the length of the JSON array of notes it renders' do
      subject { super().length }

      it { is_expected.to eq 2 }
    end
  end
end
