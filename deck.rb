class Deck


	color_array = ["red", "blue", "green", "yellow"]

	(1..9).each do |number|
	  color_array.each do |color|
	    Card.new(number, color)
	  end
	end



end
