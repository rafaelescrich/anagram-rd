class AnagramCompare < ActiveRecord::Base

	before_create :is_anagram

	def is_anagram
  		self.status = self.clean(original) == self.clean(wannabe)
  		self.status != nil
  	end
  	
  	def clean(string)
		string.gsub(/\s+/, "").mb_chars.downcase.to_s.chars.sort{ |a, b| a.casecmp(b) }.join
	end
end
