require 'digest'
if Gem.win_platform?
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end
puts "Phrase"
phrase = STDIN.gets.chomp
puts "Wich encryption
1.MD5
2.SHA1"
input = STDIN.gets.chomp
if input == "1"
  puts Digest::MD5.hexdigest phrase
elsif input == "2"
  puts Digest::SHA1.hexdigest phrase
else
  puts " no answer"
end