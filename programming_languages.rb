def reformat_languages(language)
  # your code here
  languages = {
    :oo => {
      :ruby => {
        :type => "interpreted"
      },
      :javascript => {
        :type => "interpreted"
      },
      :python => {
        :type => "interpreted"
      },
      :java => {
        :type => "compiled"
      }
    },
    :functional => {
      :clojure => {
        :type => "compiled"
      },
      :erlang => {
        :type => "compiled"
      },
      :scala => {
        :type => "compiled"
      },
      :javascript => {
        :type => "interpreted"
      }

    }
  }
  new_hash = {}

  languages.each do |current_style, style_language|
    style_language.each do |language, language_details|
      if new_hash[language] != nil && new_hash[language][:style] != nil
        new_hash[language][:style] << current_style
      else
        language_details[:style] = [current_style]
        new_hash[language] = language_details
      end
    end
  end
  new_hash
end
