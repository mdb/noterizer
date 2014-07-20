require 'spec_helper'

describe 'notes/_note' do
  let(:note) { note_double }

  before :each do
    assign(:note, note)

    render '/notes/note', note: note
  end

  context 'verifying the JSON values it renders' do
    subject { JSON.parse(rendered) }

    describe "['toField']" do
      subject { super()['toField'] }

      it { is_expected.to eq 'Mike' }
    end

    describe "['fromField']" do
      subject { super()['fromField'] }

      it { is_expected.to eq 'Sam' }
    end

    describe "['heading']" do
      subject { super()['heading'] }

      it { is_expected.to eq 'Tomorrow' }
    end

    describe "['body']" do
      subject { super()['body'] }

      it { is_expected.to eq 'Call me after 3pm.' }
    end
  end
end
