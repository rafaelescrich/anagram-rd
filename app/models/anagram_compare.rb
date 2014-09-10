class AnagramCompare < ActiveRecord::Base

	before_create :status_true

	def clean(word)
		word.gsub(/\s+/, "").mb_chars.downcase.to_s.chars.sort{ |a, b| a.casecmp(b) }.join		
	end

	def status_true
	  self.status = self.clean(original) == self.clean(wannabe) ? true : false
    end  
end
