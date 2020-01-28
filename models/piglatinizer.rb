require 'pry'

class PigLatinizer

    def piglatinize(text)
        words = text.split(' ')
        sentence = ""
        words.each do |word|
            arr = word.split(/(?=[aeiou])/)
            index = 1
            result = ""
            while index < arr.length do
                result = result + arr[index]
                index += 1
            end
            if "aeiou".include?(word[0].downcase)
                result = word + "way"
            else
                result = result + arr[0] + "ay"
            end
            sentence = sentence + result + ' '
        end
        sentence[0...-1]
    end
end