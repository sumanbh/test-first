class Dictionary

  def initialize(hash = {})
    @add = hash
  end

  def add(hash)
    hash.class == Hash ? @add.merge!(hash) : @add = Hash[hash => nil]
  end

  def entries
    @add
  end

  def keywords
    @add.keys.sort
  end

  def include?(word)
    @add.has_key?(word) ? true : false
  end

  def find(word)
    result = {}
    @add.each do |key, value|
      if key[0..word.length - 1] == word
        hash = {key => value}
        result.merge!(hash)
      end
    end
    result
  end

  def printable
    sort = @add.sort
    output = []
    (sort.length).times do |idx|
      output << "[#{sort[idx][0]}] \"#{sort[idx][1]}\""
    end

    output.join("\n")
  end
end
