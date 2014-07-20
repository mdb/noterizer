require 'rails_helper'

RSpec.describe Note, :type => :model do
  before :each do
    path = 'note-one'

    stub_request(:get, "#{Rails.application.config.notes_xml_service_root}/#{path}").to_return(
      body: [
        '<?xml version="1.0" encoding="UTF-8"?>',
        '<note type="work">',
          '<add key="to" value="Samantha"/>',
          '<add key="from" value="David"/>',
          '<add key="heading" value="Our Meeting"/>',
          '<add key="body" value="Are you available to get started at 1pm?"/>',
        '</note>'
      ].join('')
    )

    @note = Note.new(path)
  end

  describe '#to' do
    it 'returns the correct "to" value from the XML' do
      expect(@note.to).to eq 'Samantha'
    end
  end
end
