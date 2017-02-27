require 'httparty'

module OpenexchangeratesData
  class Client
    include HTTParty  

    base_uri 'https://openexchangerates.org/api'

    def initialize(app_id = nil)
      app_id ||= ENV['EXCH_API_ID']
      self.class.default_options.merge!(query: { app_id: app_id })
    end

    def latest(options = {})
      self.class.get('/latest.json', options)
    end

    def currencies
      self.class.get('/currencies.json')
    end

    def historical(date, options = {})      
      self.class.get("/historical/#{date}.json", options)
    end
  end
end
