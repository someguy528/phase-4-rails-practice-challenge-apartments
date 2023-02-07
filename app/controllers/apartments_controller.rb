class ApartmentsController < ApplicationController
    def index
        apartments = Apartment.all 
        render json: apartments
    end
    def show
        apartment = Apartment.find(params[:id])
        render json: apartment
    end
    def create 
        apartment = Apartment.create!(number: params[:number])
        render json: apartment
    end
    def update 
        apartment = Apartment.find(params[:id])
        apartment.update!(number: params[:number])
        render json: apartment
    end
    def destroy
        apartment = Apartment.find(params[:id])
        apartment.destroy
        head :no_content
    end
end
