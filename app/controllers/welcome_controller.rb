class WelcomeController < ApplicationController
    def home
        @producer_performance = current_user.productions.count
    end
    def about
    end
end
