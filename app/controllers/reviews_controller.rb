class ReviewsController < ApplicationController
  def index
      @review = Review.all

      render json: @reviews
    end

    def update
      @review = Review.find(params[:id])

      if @review.update(patient_params)
        head :no_content
      else
        render json: @patient.errors, status: :unprocessable_entity
      end
    end

    def create
      @patient = Patient.new(patient_params)

      if @patient.save
        render json: @patient
      else
        render json: @patient.errors, status: :unprocessable_entity
      end
    end

    def patient_params
      params.require(:patient).permit(:first_name, :last_name, :diagnosis, :born_on)
    end
  end

end
