class Stock < ApplicationRecord

  has_many :user_stocks
  has_many :users, through: :user_stocks
  
  # validations
  validates :name, :ticker, presence: true
    
  # create a static method for looking up a stock
  def self.new_lookup(ticker_symbol)
    client = IEX::Api::Client.new(
      publishable_token: Rails.application.credentials.iex_client[:sandbox_api_key],
      endpoint: 'https://sandbox.iexapis.com/v1'
    )      
    
    begin
      return new(ticker: ticker_symbol, name: client.company(ticker_symbol).company_name, last_price: client.price(ticker_symbol))
    rescue => exception
      return nil
    end
  end
  
end
