# frozen_string_literal: true

module HexletCode
  module FormGenerator
    class Tag
      def self.build(tag, attributes = {}, &block)
        if attributes.empty? && block.nil?
          "<#{tag}>"
        elsif block_given? && attributes.empty?
          "<#{tag}> #{yield}</#{tag}>"
        else
          attrs = attributes.map { |key, value| "#{key}=\"#{value}\" " }.join
          "<#{tag} #{attrs} #{yield}</#{tag}"
        end
      end
    end
  end
end
