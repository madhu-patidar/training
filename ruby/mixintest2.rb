#!/usr/bin/ruby
$LOAD_PATH << "."
require "mixintest1"
require "mixintest"


include M2
include M2

puts M2.add