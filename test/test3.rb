require 'yaml'

short_language = YAML.load(File.read("dictionarie.dic"))


frase = "Hello World My name is Jefferson"

p frase
tmp = 0
shfrase = ""
g = ""
last = ""
=begin
frase.each_char {|char|
    tmp += 1 if frase[tmp] == last
    next if frase[tmp] == last 
    g = frase[tmp]+frase[tmp + 1] rescue "Some Error here!"
    puts 'G= <'+g+">" 
    begin
        shfrase << (eval ("0x#{short_language[g].to_s}")) 
    rescue 
        puts 'Other error happened here!'
    end
    last = frase[tmp + 1]
    tmp += 1
}
=end

# => This here Works!!!

frase = "casa"
lshfrase = frase.scan(/.{1,2}/)
short = ""
#p lshfrase
lshfrase.each {|pair|
    short << (eval('0x'+short_language[pair].to_s))
}
=begin
puts "Short version: #{short}\n        ^\n       | |       \n        v\n"

p short

puts "short bytesize: "+short.bytesize.to_s, "frase bytesize: "+frase.bytesize.to_s
p short.bytes, frase.bytes
=end

class String
    
    def super_short
        scanned = self.scan(/.{1,2}/)
        to_return = ""
        for char in scanned
        p char.bytes[0]*char.bytes[1]
        sleep 1
            newOne = sqrt(
                sqrt(
                sqrt(
                    sqrt (
                        sqrt(
                            sqrt(
                                sqrt(
                                    sqrt(
                                        sqrt(
                                            sqrt(
                                                (sqrt(
                                                    sqrt (
                                                        
                                                        char.bytes[0]*char.bytes[1]
                                                        )
                                                        )
                                                        ) * 10_0000000000000
                                                        ) * 10000000))))
                                                        ) * 10_000_000)
                                                        ) * 10_000_000)
                                                        )
            to_return << newOne.round.to_i.chr
        end
        
        return to_return
    end
    
    def short
        scanned = self.scan(/.{1,2}/)
        short = ""
        begin
            short_language = YAML.load(File.read("dictionarie.dic")); rescue ;require 'yaml';end
        scanned.each {|pair|
        
            pair = (pair + " ") if pair.length == 1
            if short_language[pair] > 9999
                tmp = short_language[pair] / 3.0
                short << (eval('0x'+(short_language[pair] - tmp).to_i.to_s )) << " " << (eval('0x'+(tmp+tmp).to_i.to_s))
            else
                short << (eval('0x'+short_language[pair].to_s))
            end
        }
        return short
    end
    def is
       return [self.bytes, self.bytesize]
    end
end

puts "Stage 1"
word = "CASA"
name = "Jefferson"
age = "17"

p word, word.is, word.short, word.short.is
p name, name.is, name.short, name.short.is
p age, age.is, age.short, age.short.is

puts "Stage 2"

p word, word.is, word.super_short, word.super_short.is
p name, name.is, name.super_short, name.super_short.is
p age, age.is, age.super_short, age.super_short.is


