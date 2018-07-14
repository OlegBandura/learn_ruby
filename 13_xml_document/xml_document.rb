# class XML Document
class XmlDocument
  def initialize(indent = false)
    @indent = indent
    @indent_level = 0
  end

  def method_missing(method_name, *args, &block)
    data_xml = ''
    attributes = args[0] || {}
    data_xml << ('  ' * @indent_level) if @indent
    data_xml << "<#{method_name}"
    attributes.each_pair { |k, v| data_xml << " #{k}=\'#{v}\'" }

    if block
      data_xml << '>'
      @indent_level += 1
      data_xml << "\n" if @indent
      data_xml << yield
      @indent_level -= 1
      data_xml << ('  ' * @indent_level) if @indent
      data_xml << "</#{method_name}>"
      data_xml << "\n" if @indent
    else
      data_xml << '/>'
      if @indent
        data_xml << "\n"
      end
    end
    data_xml
  end
end
