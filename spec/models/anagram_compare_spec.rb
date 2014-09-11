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

  describe "#clean" do
    it "should return the string without blank spaces, in downcase and in alphabetical order" do
      string = AnagramCompare.new.clean("I'm almost done with the test part!!!")
      expect(string == "!!!'aadeeehhiilmmnooprssttttttw").to be_truthy
    end
    it "should return the string without blank spaces, in downcase and in alphabetical order" do
      string = AnagramCompare.new.clean("bbc")
      expect(string == "cbb").to be_falsey
    end
  end
end