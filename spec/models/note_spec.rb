require 'rails_helper'

RSpec.describe Note, :type => :model do
  before :each do
    path = 'note-one'

    stub_note_request(path)

    @note = Note.new(path)
  end

  describe '#to' do
    it 'returns the correct "to" value from the XML' do
      expect(@note.to).to eq 'Samantha'
    end
  end
end
