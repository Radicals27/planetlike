class SearchesController < ApplicationController
    def new
        @search = Search.new
        @sexes = Profile.pluck(:sex).uniq

    end
    def create
        @search = Search.create(search_params)
        redirect_to @search
    end
    def show
        @search = Search.find(params[:id])
    end

    private

    def search_params
        params.require(:search).permit(:name, :sex, :orientation, :about_me, :work_education, :location, :looking_for)
    end
end
