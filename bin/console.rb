#!/usr/bin/env ruby

require 'pry'

require_relative '../models/card.rb'
require_relative '../models/deck.rb'
require_relative '../models/person.rb'

def reload!
	load 'models/card.rb'
	load 'models/deck.rb'
	load 'models/person.rb'
end

Pry.start
