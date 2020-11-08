class WelcomeController < ApplicationController
    def home
        if logged_in?
            @producer_performance = current_user.productions.count
        end
    end
    
    def about
    end
end
