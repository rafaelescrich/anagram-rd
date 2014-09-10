require 'test_helper'

class AnagramCompareTest < ActiveSupport::TestCase
  
  describe AnagramCompare do
    
    before :each do
      @anagram_compare = AnagramCompare.new "original", "wannabe", :status
    end

    describe "#new" do
      it "returns a new anagram object" do
        @anagram_compare.should be_and_instance_of AnagramCompare
      end
	end
  end
end
