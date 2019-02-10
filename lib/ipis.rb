require 'ipis/version'
require 'http'
require 'json'
require 'ipis/queries/ip_api'
require 'ipis/formatters/base_formatter'

module IPis
  class Error < StandardError; end
  class Lookup
    def initialize(args)
      @ips_to_lookup = args.map(&:strip).uniq
      @query_adapter = IPis::Queries::IPApi
      @formatter_adapter = IPis::Formatters::BaseFormatter
    end

    def run
      @ips_to_lookup.each do |ip|
        puts show(ip)
        puts
      end
    end

    private

    def show(ip)
      query = @query_adapter.new(ip)
      @formatter_adapter.format(query.result)
    end
  end
end