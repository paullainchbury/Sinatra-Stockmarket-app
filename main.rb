require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry-byebug'
require 'yahoofinance'

# puts YahooFinance::get_standard_quotes('AAPL')['AAPL'].name

# puts YahooFinance::get_standard_quotes('AAPL')['AAPL'].lastTrade

get '/' do
  # 'This is the homepage'
  # ["Good morning", "Hello", "Welcome", "Hey", "What's up!"].sample
  
  # @stock_symbol = params[:stock_symbol].to_s.upcase
  
  erb :home

end

get '/home' do
  @stock_symbol = params[:stock_symbol].to_s.upcase
  @stock = YahooFinance::get_standard_quotes(@stock_symbol)[@stock_symbol]
  erb :home
end




 

  

