#!/usr/bin/env ruby

require 'pry'

require_relative '../models/card.rb'
require_relative '../models/person.rb'
require_relative '../models/deck.rb'

def reload!
	load 'models/card.rb'
	load 'models/person.rb'
	load 'models/deck.rb'
end

Pry.start
