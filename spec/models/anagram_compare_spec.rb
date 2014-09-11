require 'spec_helper'
require 'rails_helper'

describe AnagramCompare do

	anagram = AnagramCompare(original: "teste",wannabe: "etset")
  	expect(anagram.status).to be_truthy
  
  	anagram = AnagramCompare(original: "teste",wannabe: "xxx")
  	expect(anagram.status).to be_falsey

end