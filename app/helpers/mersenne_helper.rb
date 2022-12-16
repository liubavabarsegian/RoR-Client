module MersenneHelper
  URL_SERV = 'http://127.0.0.1:3000/result.xml'
  XSLT_PATH = 'public/result.xslt'

  def show_result(mode)
    case mode
    when 'xml'
      render xml: @respond_xml
    when 'html'
      render inline: xml_transform
    end
  end

  def xml_transform
    xslt = Nokogiri::XSLT(File.read(XSLT_PATH))
    xslt.transform(@respond_xml)
  end
end
