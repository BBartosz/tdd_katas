Token = Struct.new(:word, :token)

class Scanner
  attr_accessor :tokens

  def initialize(input)
    @tokens = array_of_elements(input).map {|token| create_token_struct(token)}
  end

  def array_of_elements(input)
    input.scan(token_spec).map {|token_array| token_array.find{|token| token}}
  end

  def create_token_struct(token)
    token_matchdata = token.match(token_spec)
    token_names     = token.match(token_spec).names

    token_name = token_names.find {|name| token_matchdata[name.to_sym]}
    Token.new(token_matchdata[token_name.to_sym].to_s, token_name)
  end

  def token_spec
    spec_list = [
      ["COMMA" ,     /\,/],
      ["NUMBER",     /-?\d+/],
      ["UNDEFINED",  /./]
    ]
    spec_string = ''
    spec_list.each do |pair|
      spec_string += ('(?<%s>%s)' % pair) 
      spec_string += '|' if pair != spec_list.last
    end
    regex_spec = %r{#{spec_string}}
  end
end