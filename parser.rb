# variables
src_file = '1.txt'
out_file = 'out.xml'
words = Array[]

# todo to check if file opened successfully
xml = File.open(out_file, 'w:windows-1251')
xml.puts('<?xml version="1.0" encoding="UTF-8"?>')
xml.puts('<dataroot generated="' + Time.now.to_s + '">')
File.open(src_file, 'r:windows-1251') do |file|
  for line in file.readlines
    xml.puts('<paragraph>')
    words = line.split
    words.each { |word| xml.write('<word>'+word+'</word>'+"\n") }
    xml.puts('</paragraph>')
  end
end
xml.puts('</dataroot>')
xml.close()
