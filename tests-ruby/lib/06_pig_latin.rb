def translate(sentence)
  words = sentence.split

  words = words.map do |word|
    punct = nil 
    if word[-1] =~ /[[:punct:]]/
      punct = word[-1]
      word = word[0..-2]
    end

    capitalized = (word[0] == word[0].upcase)
    word = word.downcase

    consonant_bloc = word[/^([^aeiou]*qu|[^aeiou]+)/]
    if consonant_bloc
      rest = word[consonant_bloc.length..-1] 
      transformed = rest + consonant_bloc + "ay"
    else 
      transformed = word + "ay"
    end

    transformed = transformed.capitalize if capitalized

    transformed += punct if punct

    transformed
  end

  words.join(" ")
end