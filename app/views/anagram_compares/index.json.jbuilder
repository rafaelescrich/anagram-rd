json.array!(@anagram_compares) do |anagram_compare|
  json.extract! anagram_compare, :id, :original, :wannabe, :status
  json.url anagram_compare_url(anagram_compare, format: :json)
end
