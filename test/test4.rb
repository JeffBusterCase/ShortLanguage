class String
    def getSquare
        tmp = self
        tmp << 32.chr if tmp.length % 2 != 0
        tmp = tmp.scan(/.{1,2}/)
        what_is_to_return = []
        t = 0
        for pair in tmp
            sum = (pair.bytes[0] + pair.bytes[1])
            mult = (pair.bytes[0] * pair.bytes[1])
            what_is_to_return[t] = {sum: sum, mult: mult}
            t += 1
        end
        return what_is_to_return
    end
end

def squareAlg area, sum
    #pass
end

word = "World"
frase = "Yes That is it!"
name = "Jefferson"
age = "17"
p word.getSquare, 
  frase.getSquare,
  name.getSquare,
  age.getSquare

