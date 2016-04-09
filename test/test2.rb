require 'yaml'





dictionarie = YAML.load File.read "dictionarie.dic"
word = ""
["Je", "ff", "er", "so", "n "].each {|pair|
    p dictionarie[pair]
    word << dictionarie[pair]
}

print word, word.bytes