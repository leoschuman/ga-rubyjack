# GA PFR: Programming Fundamentals for Ruby on Rails
# Intro to Ruby - Final Project
#
# Rubyjack: a simple game of 21
#
# - 52 card deck is built and shuffled
# - Two players, a named user and a dealer, are each given two card
# - Player cards are shown
# - User player given choice to (H)it or (S)tand
# - With each hit, a card is added to User player's hand
# - Dealer hits up to 16 and stands on 17 or higher
# - When user player stands, game determines and identifies winner
#
# USAGE: ruby rubyjack.rb "User Name"
# 
# Project demonstrates
# - local, instance, and global variables
# - arrays, hashes, and custom object type(s)
# - logical conditions
# - branching via both if/elsif/else and case/when
# - classes and object instantiation
# - attr_accessor
# - instance methods
# - module mixin to class
# - array
# - hash
# - command line input 
# - command line display 
# - string interpolation
# - comments
#
#

# add current directory to Ruby LOAD_PATH
$LOAD_PATH.unshift(File.dirname(__FILE__))

# require game class from /lib relative to current directory per modified LOAD_PATH
require "lib/game"

# pass first command line argument - User's name - to new Game object
name = ARGV[0]
loop do
	game = Game.new(name)
	puts "\n(Q)uit or (C)ontinue?"
	choice = $stdin.gets.chomp
	next unless choice.upcase == "Q"
	puts "Bye!"
	break
end