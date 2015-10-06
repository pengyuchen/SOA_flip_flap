# Module that can be included (mixin) to create and parse TSV data
module TsvBuddy
  # @data should be a data structure that stores information
  #  from TSV or Yaml files. For example, it could be an Array of Hashes.
  attr_accessor :data

  # take_tsv: converts a String with TSV data into @data
  # parameter: tsv - a String in TSV format
  def take_tsv(tsv)
    @data  = []
    lines  = tsv.split("\n")
    keys   = lines[0].split("\t")
    lines.shift
    lines.each { |line| @data << keys.zip(line.split("\t")).to_h }
  end

  # to_tsv: converts @data into tsv string
  # returns: String in TSV format
  def to_tsv
    tsv = ''
    tsv << @data[0].keys.join("\t") + "\n"
    @data.each { |d| tsv << d.values.join("\t") + "\n" }
    tsv
  end
end
