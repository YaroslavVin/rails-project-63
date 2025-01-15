# frozen_string_literal: true

require_relative 'hexlet_code/form_generator'

puts 'set your name tags'
tag_name = gets.chomp

puts 'set hash attribute for html'
attribute_hash = eval(gets.chomp)

puts 'set web element name'
element_name = gets.chomp

tag_result = HexletCode::FormGenerator::Tag.build(tag_name, attribute_hash) { element_name }

puts tag_result
