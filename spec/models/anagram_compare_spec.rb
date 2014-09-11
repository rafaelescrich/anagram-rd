require 'rails_helper'

RSpec.describe AnagramCompare, :type => :model do

  describe "#status" do
    it "should return true when anagram" do
      anagram = AnagramCompare.new(original: "teste",wannabe: "etset")
      anagram.status_true
      expect(anagram.status).to be_truthy
    end

    it "should return false when not anagram" do
      anagram = AnagramCompare.new(original: "teste", wannabe: "xxx")
      anagram.status_true
      expect(anagram.status).to be_falsey
    end
  end
end