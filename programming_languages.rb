def reformat_languages(languages)
  reformatted_hash = {}
  languages.each do |type, language|
    language.each do |lang, info|
      if reformatted_hash[lang] == NIL
        reformatted_hash[lang] = {}
      end
    end
  end
  
  languages.each do |type, language|
    language.each do |lang, info|
      reformatted_hash.each do |lang_r, info_r|
        if lang_r == lang
          if info_r == {}
            new_array = []
            info.each do |key, value|
              new_array << type
              new_hash = {key => value, :style => new_array}
              reformatted_hash[lang_r] = new_hash
            end
          else
            info.each do |key, value|
              reformatted_hash[lang_r][:style] << type
            end
          end
        end
      end
    end
  end
  return reformatted_hash
end