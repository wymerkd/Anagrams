#!/usr/bin/ruby

require ('./lib/anagram_logic.rb')

puts "Check to see if two words or phrases are anagrams"
puts "Enter a word or phrase"
first_word = gets.chomp
puts "Enter another word or phrase"
second_word = gets.chomp
is_it_anagram = Anagram.new(first_word, second_word)
puts is_it_anagram.word_check()
puts is_it_anagram.antigram_check()
puts is_it_anagram.anagram_check()
