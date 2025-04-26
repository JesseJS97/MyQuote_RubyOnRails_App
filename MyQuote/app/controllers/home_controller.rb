class HomeController < ApplicationController
  def index
    #OpenAI.(2024).Quote included snippet of code [AI-generated .txt file]. Generated using ChatGPT, provided by OpenAI.
    @recentquotes = Quote.includes(:philosopher).order(created_at: :desc).limit(5)
  end

  def urquotes
    @quotes = Quote.includes(:philosopher).where(user_id: session[:user_id])
  end
end