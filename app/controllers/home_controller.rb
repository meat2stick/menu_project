class HomeController < ApplicationController
  def index
    render json: { message: "head to POST /graphql to test." }, status: :ok
  end
end
