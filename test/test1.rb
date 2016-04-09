require 'yaml'


class String
    def short
        scanned = self.scan(/.{1,2}/)
        short = ""
        begin
            short_language = YAML.load(File.read("short_dictionarie.dic")); rescue ;require 'yaml';retry;end
        scanned.each {|pair|
            pair = (pair + " ") if pair.length == 1
            short << short_language[pair.to_sym]
        }
        return short
    end
    def is
       return [self.bytes, self.bytesize]
    end
end


chars = (65...126).map { |i| i.chr}

chars << "'"
chars << "!"
chars << "."
chars << " "
chars << "0"
chars << "1"
chars << "2"
chars << "3"
chars << "4"
chars << "5"
chars << "6"
chars << "7"
chars << "8"
chars << "9"

#p chars.length

short_language = {}
tmp = 00
for char in chars
    for char2 in chars
        short_language[(char+char2).to_sym] = tmp       
        tmp += 1
    end
end
#p short_language
File.open("short_dictionarie.dic", "w"){|dic|
    dic.puts YAML.dump(short_language)
}

#p short_language.length
frase = "I need ton know your name!"
puts "Normal bytesize"
puts frase.bytesize
puts frase.short
puts "Shorted size"
p frase.short.bytesize
puts "letter bytesize"
p frase.short[0].bytes, frase[0].bytes


