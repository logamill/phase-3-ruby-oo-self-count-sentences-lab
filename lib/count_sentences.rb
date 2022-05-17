require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    words_array = self.split(/\.|\?|\!/)
    filtered_words = words_array.filter do |sentence| 
      !sentence.empty?
    end
    filtered_words.size
    # self.split(/\.|\?|!/).filter { |sentence| !sentence.empty? }.size    
  end
end