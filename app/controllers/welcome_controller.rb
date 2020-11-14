class WelcomeController < ApplicationController
    def home
       @productions = Production.all
       @clients = Client.all
    end
    
    def about
    end
end
