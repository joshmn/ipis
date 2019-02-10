module IPis
  module Queries
    class IPApi
      attr_reader :ip
      def initialize(ip)
        @ip = ip
      end

      def result
        @result ||= JSON.parse(request.to_s)
      end

      private

      def request
        @request ||= HTTP.get("http://ip-api.com/json/#{ip}")
      end
    end
  end
end