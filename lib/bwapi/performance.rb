require 'allotment'
require 'hashie'

module BWAPI
  # Helper methods for performance
  module Performance
    def average_response_time
      averages = []
      performance.each_key { |key| averages << Allotment.results[key].average }
      averages.average
    end

    def average_response_time_breakdown
      results = []
      performance.each do |key, value|
        results << Hashie::Mash.new(path: key, average: Allotment.results[key].average, count: value.size)
      end
      results
    end

    def fastest_response
      average_response_time_breakdown.sort_by { |result| result[:average] }.first
    end

    def response_paths
      performance.keys
    end

    def slowest_response
      average_response_time_breakdown.sort_by { |result| result[:average] }.reverse.first
    end

    def total_responses
      responses = 0
      performance.each_value { |value| responses += value.size }
      responses
    end
  end
end
