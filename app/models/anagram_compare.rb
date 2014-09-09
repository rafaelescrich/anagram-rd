class AnagramCompare < ActiveRecord::Base

	before_save :status_true

	def clean(word)
		word.mb_chars.downcase.to_s.chars.sort{ |a, b| a.casecmp(b) }.join		
	end

	def status_true

      puts "-------------------------------------------------"

	  puts "#{self.clean(original) == self.clean(wannabe)}"

	  self.status = self.clean(original) == self.clean(wannabe) ? true : false
	  true
    end  
end
