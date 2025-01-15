# frozen_string_literal: true

require 'spec_helper'
require_relative 'lib/form_generator/tag'

RSpec.describe HexletCode::FormGenerator::Tag do
  it 'create one tag' do
    result = HexletCode::FormGenerator::Tag.build('span')
    expect(result).to eq('<span>')
  end
end
