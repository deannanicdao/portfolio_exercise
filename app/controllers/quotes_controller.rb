class QuotesController < ApplicationController
    skip_before_action :verify_authenticity_token
    
    @@quotes = [
        "Quote 1",
        "Quote 2",
        "Quote 3",
        "Quote 4",
        "Quote 5"
    ]

    def show_quote
        index = rand(@@quotes.size)
        @quote = @@quotes[index]
        @quotes == @@quotes
    end

    def add_quotes
        @@quotes.push(params[:quotes])
    end

    def def show
        @quote = @@quotes[params[:id].to_i]
    end

end