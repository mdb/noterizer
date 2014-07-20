require 'nokogiri'

class Note
  def initialize(path = nil)
    @uri = URI.parse("#{Rails.application.config.notes_xml_service_root}/#{path}")
    @xml = get_and_parse_response

    create_methods
  end

  private

  def get_and_parse_response
    Nokogiri::XML(get_response)
  end

  def get_response
    http = Net::HTTP.new(@uri.host, @uri.port)

    http.request(request).body
  end

  def request
    Net::HTTP::Get.new(@uri.request_uri)
  end

  def create_methods
    available_methods.each do |method|
      self.class.send(:define_method, method) { fetch_value method.to_s }
    end
  end

  def available_methods
    [
      :to,
      :from,
      :heading,
      :body
    ]
  end

  def fetch_value(value)
    @xml.xpath("//add[@key='#{value}']/@value").text
  end
end
