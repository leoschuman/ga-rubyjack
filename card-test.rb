$LOAD_PATH.unshift(File.dirname(__FILE__))
 
require 'lib/card'
require 'lib/deck'
 
card = Card.new(12, 'Hearts')

puts card.rank
puts card.value
puts card.suit
puts card.display

puts "-----"

current_deck = Deck.new

puts current_deck.deck.length
current_deck.deck.each do |card|
	puts card.display
end

3.times do |i|
	puts "-----"
	my_card = current_deck.draw_card
	puts my_card.display
	puts current_deck.deck.length
end

puts "----"

require 'lib/player'

$deck = Deck.new
player = Player.new("Leo", $deck, 2)
player.show_hand
puts player.total
puts "hit!"
player.draw
player.show_hand
puts player.total