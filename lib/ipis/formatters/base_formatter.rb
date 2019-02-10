module IPis
  module Formatters
    class BaseFormatter
      def self.format(result)
        new(result).format
      end

      def initialize(result)
        @result = result
      end

      def format
        parts = []
        @result.each do |k,v|
          parts << "#{bold(k)}:  #{v}"
        end
        parts.join("\n")
      end

      private

      def bold(text)
        "\033[1m#{text}\033[0m"
      end
    end
  end
end