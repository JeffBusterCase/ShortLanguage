module Finder
    def self.hide a, pa
        Math.sqrt( (a / 2) - ( pa / 2) )
    end
    def self.find num, t
        num + (2 * (t ** 2))
    end
    
    module Super
        SOMER = 303
        def self.find num, key
            #303 is the constant that returns the right number
            Math.sqrt(( ( Finder.find(num, key) / 2 ) ** 2) + SOMER)
        end
        def self.hide num1, num2
            Finder.find(Finder.find(num2, Finder.hide(num1, num2)), Finder.hide(num1, num2))
        end
        def self.F arg
            Math.sqrt( (   (   2 * ((SOMER) - arg)   ) ** 2  ) - 203 )
        end
    end
end
