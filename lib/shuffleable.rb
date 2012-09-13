# The Shuffleable module contains methods that allow us to randomly shuffle an array
module Shuffleable
  def shuffle_deck(deck)
	# shuffle! is a built in array method
	# could alt this with an arbitrary shuffling algorithm
    return deck.shuffle!
  end
end