class SearchesController < ApplicationController

    def new 
        @search = Search.new
    end

    def index 
        @searches = Search.all
    end

    def create 
        @search = Search.create(search_params)
        redirect_to search_path(@search)
    end

    private

    def search_params
        params.require(:search).permit(:keyewords)
    end



end
