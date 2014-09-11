require 'rails_helper'

RSpec.describe AnagramCompare, :type => :model do

  describe "#status" do
    it "should return true when anagram" do
      anagram = AnagramCompare.new(original: ",teste.   ", wannabe: ".et  set,")
      anagram.is_anagram
      expect(anagram.status).to be_truthy
    end

    it "should return true when anagram" do
      anagram = AnagramCompare.new(original: "52", wannabe: "25")
      anagram.is_anagram
      expect(anagram.status).to be_truthy
    end

    it "should return false when not anagram" do
      anagram = AnagramCompare.new(original: "teste", wannabe: "xxx")
      anagram.is_anagram
      expect(anagram.status).to be_falsey
    end

    it "should return false when not anagram" do
      anagram = AnagramCompare.new(original: "54", wannabe: "56")
      anagram.is_anagram
      expect(anagram.status).to be_falsey
    end
  end
end