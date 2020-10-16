class PagesController < ApplicationController
    @@quotes = [
        "Quote 1",
        "Quote 2",
        "Quote 3",
        "Quote 4",
        "Quote 5"
    ]

    def index
        @title = "Quotes"
        @quotes = @@quotes
    end

    def contact
        @title = "contact"
    end
    
    def about
        @title = "about"
    end

    def home
        @title = "home"
        @home = true
        # below data should be in a model
        
        
        # fetches from the model
        # gives that info to the view
    end

    def quotes
        @title = "quotes"
    end

    def add_quotes
        @@quotes.push(params[:quote])
        # render plain: params["quote"]
        render json: params[:quote]
    end
end