module Helpers
  def note_double
    double('Note',
      to: 'Mike',
      from: 'Sam',
      heading: 'Tomorrow',
      body: 'Call me after 3pm.',
    )
  end

  def stub_note_request(path)
    base_url = Rails.application.config.notes_xml_service_root

    stub_request(:get, "#{base_url}/#{path}").to_return(
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
  end
end
