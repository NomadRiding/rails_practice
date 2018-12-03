class PeopleController < ApplicationController

    def index
        @people = Person.all
        @people = @people.where(name: params[:name]) if params[:name].present?
        @people = @people.where(mood: params[:mood]) if params[:mood].present?
        @people = @people.where("age >= ?", params[:min_age].to_i) if params[:min_age].present?
        @people = @people.where("age <= ?", params[:max_age].to_i) if params[:max_age].present?
    end

end
