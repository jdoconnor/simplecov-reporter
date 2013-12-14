require 'httparty'

class SimpleCov::Formatter::Reporter

  def format(result)
    name = ENV['COVERAGE_REPORTER_NAME']
    url = ENV['COVERAGE_REPORTER_URL']
    return unless name && url
    # send to a remote server
    keys = [:covered_lines, :missed_lines, :total_lines, :created_at, :covered_percent, :covered_strength]
    h = {}
    keys.each do |k|
      h[k] = result.send(k)
    end
    HTTParty.post(url, body: { results: h, name: name } )
  end

end

$LOAD_PATH.unshift(File.join(File.dirname(__FILE__)))
require 'simplecov-reporter/version'
