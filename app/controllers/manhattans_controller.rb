class ManhattansController < ApplicationController

    def manhattan
        
        @tweet = Tweet.all
        
    end

end