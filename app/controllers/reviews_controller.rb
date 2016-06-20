class ReviewsController < ApplicationController

  def create
    @beer = Beer.find(params[:beer_id])
    @review = @beer.reviews.create(review_params)
    redirect_to beer_path(@beer)
  end

  private
    def review_params
      params.require(:review).permit(:commenter, :body)
    end

end
