File.open("source_code_reader.rb", "r") do |file|
  file.each_line do |line|
    print line
  end
end
