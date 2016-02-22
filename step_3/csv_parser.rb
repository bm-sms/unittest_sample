class CSVParser
  def parse(filename, header: false)
    text = File.open(filename, &:read)
    parse_csv_text(text)
  end

  def parse_csv_text(text)
    lines = text.split("\n")
    lines.map {|line| parse_line(line) }
  end

  private

  def parse_line(line)
    word = get_first_word(line)
    val = []
    begin
      if word == '"'
        val << get_next_word.gsub('""', '"')
        get_next_word
      else
        val += word.split(',')
      end
    end while word = get_next_word
    val
  end

  def get_first_word(str)
    @words = str.split(/("),(")|("),|,(")|\A(")|(")\Z/)
    @words.delete('')
    @words.shift
  end

  def get_next_word
    @words.shift
  end
end
