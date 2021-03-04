# frozen_string_literal: true
require 'thread'

module YARD
  module Templates
    module Helpers
      module Markup
        require 'kramdown'

        begin
          require 'kramdown-parser-gfm'

          class Kramdown < ::Kramdown::Document

            def initialize(text)
              super(text, input: 'GFM')
            end

          end
        rescue LoadError
          class Kramdown < ::Kramdown::Document
          end
        end
      end
    end
  end
end
