class ShindansController < ApplicationController
    def index
    end

    def new
        @shindan = Shindan.new
    end

    def show
        @shindan = Shindan.find_by(id: params[:id])
    end

    def create
        shindan = Shindan.new(shindan_params)
        if shindan.save
            flash[:notice] = "診断が完了しました"
            redirect_to shindan_path(shindan.id)
        else
            redirect_to :action => "new"
        end
    end
  
  private
    def shindan_params
        params.require(:shindan).permit(:question1, :question2, :question3, :question4)
    end
end
