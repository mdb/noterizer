module Helpers
  def stub_note_request(path)
    base_url = "http://notesservicedemo.herokuapp.com"

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
