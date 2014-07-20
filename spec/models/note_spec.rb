require 'rails_helper'

RSpec.describe Note, :type => :model do
  before :each do
    @note = Note.new('note-one')
  end

  describe '#to' do
    it 'returns the correct body value from the XML' do
      expect(@note.to).to eq 'Samantha'
    end
  end
end
