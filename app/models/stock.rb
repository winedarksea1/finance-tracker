class Stock < ApplicationRecord
    
  # create a static method for looking up a stock
  def self.new_lookup(ticker_symbol)
    client = IEX::Api::Client.new(
      publishable_token: Rails.application.credentials.iex_client[:sandbox_api_key],
      endpoint: 'https://sandbox.iexapis.com/v1'
    )      
    
    return client.price(ticker_symbol)
  end
  
end
