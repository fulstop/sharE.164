class NumbersController < ApplicationController

  before_action :require_number

  def create
    number = Number.new(strong_params)

    if number.save!
      redirect_to number
    else
      redirect_to 'home#index'
      flash[:error] = number.errors.full_messages.to_sentence
    end
  end

protected

  def strong_params
    params.require(:number).permit(:phone_number, :email)
  end

  def require_number
    @number = Number.find(params[:id])
  end

end
