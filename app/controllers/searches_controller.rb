class SearchesController < ApplicationController
    def new
        @search = Search.new
        @sex_options = Profile.pluck(:sex).uniq
        @orientation_options = Profile.pluck(:orientation).uniq
        @location_options = Profile.pluck(:location).uniq
        @looking_for_options = Profile.pluck(:looking_for).uniq
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
