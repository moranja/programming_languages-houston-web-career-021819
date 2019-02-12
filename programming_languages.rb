require 'pry'

def reformat_languages(languages)
  reformatted_hash = {}
  languages.each do |type, language|
    language.each do |lang, info|
      if reformatted_hash[lang] == NIL
        reformatted_hash[lang] = {}
      end
    end
  end
  
  new_hash = {}
  #new_hash[:test] ="test"
    
  languages.each do |type, language|
    language_type = type
    language.each do |lang, info|
      reformatted_hash.each do |lang_r, info_r|
        #binding.pry
        if lang_r == lang
          #binding.pry
          info.each do |key, value|
            new_hash = {key => value, :style => language_type}
            new_hash[key] = value
            new_hash[:style] = language_type
            reformatted_hash[lang_r] = new_hash
            binding.pry
          end
        end
      end
    end
  end
  
      
  return reformatted_hash
end






