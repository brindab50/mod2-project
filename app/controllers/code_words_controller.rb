class CodeWordsController < ApplicationController
    def index
        @code_words = CodeWord.all
    end

    def show
        @code_word = CodeWord.find(params[:id])
    end
end
