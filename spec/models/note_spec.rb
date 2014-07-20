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

  describe '#from' do
    it 'returns the correct "from" value from the XML' do
      expect(@note.from).to eq 'David'
    end
  end

  describe '#heading' do
    it 'returns the correct "heading" value from the XML' do
      expect(@note.heading).to eq 'Our Meeting'
    end
  end

  describe '#body' do
    it 'returns the correct "body" value from the XML' do
      expect(@note.body).to eq 'Are you available to get started at 1pm?'
    end
  end
end
